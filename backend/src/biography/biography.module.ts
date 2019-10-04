import { Module } from '@nestjs/common';
import { BiographyService } from './biography.service';
import { TranslationModule } from '../translation/translation.module';

@Module({
  imports: [
    TranslationModule,
  ],
  providers: [
    BiographyService,
  ],
  exports: [
    BiographyService,
  ],
})
export class BiographyModule { }
