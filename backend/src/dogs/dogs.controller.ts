import { Controller, Get, Param } from '@nestjs/common';
import { ApiResponse } from '@nestjs/swagger';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { BiographyService } from '../biography/biography.service';
import { DogEntity } from './models/dog-entity.model';
import { RandomUserService } from '../random-user/random-user.service';

@Controller('dogs')
export class DogsController {

  constructor(private bioService: BiographyService,
              private randomUserService: RandomUserService) { }

  @Get()
  @ApiResponse({
    status: 200,
    description: 'Testing Endpoint',
    type: String,
  })
  root(): Observable<DogEntity> {
    const bio = this.bioService.getBio();
    return this.randomUserService.getRandomPerson()
      .pipe(map(res => ({ ...res, bio })));
  }

  @Get('/:count')
  getCount(@Param('count') count): Observable<DogEntity[]> {
    const nextBio = () => this.bioService.getBio();
    return this.randomUserService.getRandomPeople(count)
      .pipe(map(res => res.map(person => ({ ...person, bio: nextBio() }))));
  }
}
