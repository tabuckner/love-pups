import { Injectable, HttpService } from '@nestjs/common';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { DogImageWithBreed } from './models/dog-image-with-breed.model';
import { DogImageResponse } from './models/dog-image-response.model';
import { DogImagesResponse } from './models/dog-images-response.model';

@Injectable()
export class DogImageService {
  private readonly baseUrl = 'https://dog.ceo/api';
  private readonly randomEndpoint = 'breeds/image/random';

  constructor(private http: HttpService) { }

  public getRandomImage(): Observable<DogImageWithBreed> {
    const url = this.getRandomImageEndpoint();
    return this.http.get<DogImageResponse>(url)
      .pipe(map((res) => {
        const imageUrl = res.data.message;
        const breed = this.getDogBreedFromImageUrl(res.data.message);
        const payload: DogImageWithBreed = { imageUrl, breed };
        return payload;
      }));
  }

  public getRandomImages(quantity: number): Observable<DogImageWithBreed[]> {
    const url = `${this.getRandomImageEndpoint()}/${quantity}`;
    return this.http.get<DogImagesResponse>(url)
      .pipe(map(res => {
        return res.data.message.map(eachImageUrl => {
          const imageUrl = eachImageUrl;
          const breed = this.getDogBreedFromImageUrl(eachImageUrl);
          const payload: DogImageWithBreed = { imageUrl, breed };
          return payload;
        });
      }));
  }

  private getRandomImageEndpoint() {
    return `${this.baseUrl}/${this.randomEndpoint}`;
  }

  private getDogBreedFromImageUrl(url: string): string {
    const splitter = `https://images.dog.ceo/breeds/`;
    const hyphenatedBreed = url.split(splitter)[1].split('/')[0];
    const breed = hyphenatedBreed
      .split('-')
      .map(el => el.charAt(0).toUpperCase() + el.slice(1))
      .reverse()
      .join(' ');
    return breed;
  }
}
