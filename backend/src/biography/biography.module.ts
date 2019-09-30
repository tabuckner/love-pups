import { Module } from '@nestjs/common';
import { BiographyService } from './biography.service';
// import { HOBBIES } from 'src/shared/constants/hobbies';

@Module({
  providers: [
    BiographyService,
  ],
})
export class BiographyModule { }
