import { Module } from '@nestjs/common';
import { DogEntitiesService } from './dog-entities.service';
import { DogImageModule } from '../dog-image/dog-image.module';
import { RandomUserModule } from '../random-user/random-user.module';
import { BiographyModule } from '../biography/biography.module';

@Module({
  imports: [
    BiographyModule,
    DogImageModule,
    RandomUserModule,
  ],
  providers: [DogEntitiesService],
  exports: [DogEntitiesService],
})
export class DogEntitiesModule {}
