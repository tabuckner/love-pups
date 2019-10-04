import { Module, HttpModule } from '@nestjs/common';
import { DogImageService } from './dog-image.service';

@Module({
  providers: [DogImageService],
  imports: [
    HttpModule,
  ],
  exports: [DogImageService],
})
export class DogImageModule { }
