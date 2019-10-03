import { Module } from '@nestjs/common';
import { BiographyService } from './biography.service';
import { TranslationModule } from 'src/translation/translation.module';

@Module({
  imports: [
    TranslationModule,
  ],
  providers: [
    BiographyService,
  ],
})
export class BiographyModule { }
