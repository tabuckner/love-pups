import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { BiographyModule } from './biography/biography.module';
import { BiographyService } from './biography/biography.service';
import { TranslationModule } from './translation/translation.module';

@Module({
  imports: [BiographyModule, TranslationModule],
  controllers: [AppController],
  providers: [AppService, BiographyService],
})
export class AppModule {}
