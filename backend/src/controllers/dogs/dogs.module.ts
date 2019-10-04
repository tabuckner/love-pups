import { Module } from '@nestjs/common';
import { DogsController } from './dogs.controller';
import { DogEntitiesModule } from '../../services/dog-entities/dog-entities.module';

@Module({
  controllers: [DogsController],
  imports: [
    DogEntitiesModule,
  ],
})
export class DogsModule {}
