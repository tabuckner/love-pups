import { Injectable } from '@nestjs/common';
import { Observable, forkJoin } from 'rxjs';
import { map } from 'rxjs/operators';
import { BiographyService } from '../biography/biography.service';
import { RandomUserService } from '../random-user/random-user.service';
import { DogImageService } from '../dog-image/dog-image.service';
import { DogEntity } from '../../controllers/dogs/models/dog-entity.model';
import { RandomUserPerson } from '../random-user/models/random-user-person.model';
import { DogImageWithBreed } from '../dog-image/models/dog-image-with-breed.model';

@Injectable()
export class DogEntitiesService {

  constructor(private bioService: BiographyService,
              private randomUserService: RandomUserService,
              private dogImageService: DogImageService) { }

  public getDogEntity(): Observable<DogEntity> {
    const bio = this.bioService.getBio();
    return forkJoin<RandomUserPerson, DogImageWithBreed>(
      this.randomUserService.getRandomPerson(),
      this.dogImageService.getRandomImage(),
    ).pipe(map(res => {
      const randomPerson = res[0];
      const dogImage = res[1];
      return { ...randomPerson, image: dogImage, bio };
    }));
  }

  public getDogEntities(quantity: number): Observable<DogEntity[]> {
    return forkJoin<RandomUserPerson[], DogImageWithBreed[]>(
      this.randomUserService.getRandomPeople(quantity),
      this.dogImageService.getRandomImages(quantity),
    ).pipe(map(res => {
      const randomPeople = res[0];
      const randomImages = res[1];
      const payload: DogEntity[] = [];

      for (let i = 0; i < quantity; i++) {
        const randomPerson = randomPeople[i];
        const image = randomImages[i];
        const bio = this.bioService.getBio();
        const entity = {
          ...randomPerson,
          image,
          bio,
        };
        payload.push(entity);
      }
      return payload;
    }));
  }

}
