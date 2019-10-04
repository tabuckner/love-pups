import { Module } from '@nestjs/common';
import { DogsController } from './dogs.controller';
import { BiographyModule } from '../biography/biography.module';

@Module({
  controllers: [DogsController],
  imports: [
    BiographyModule,
  ],
})
export class DogsModule {}
