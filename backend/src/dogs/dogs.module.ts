import { Module } from '@nestjs/common';
import { DogsController } from './dogs.controller';
import { BiographyModule } from '../biography/biography.module';
import { RandomUserModule } from '../random-user/random-user.module';

@Module({
  controllers: [DogsController],
  imports: [
    BiographyModule,
    RandomUserModule,
  ],
})
export class DogsModule {}
