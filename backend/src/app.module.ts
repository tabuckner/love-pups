import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { BiographyService } from './biography/biography.service';
import { TranslationModule } from './translation/translation.module';
import { DogsModule } from './dogs/dogs.module';

@Module({
  imports: [TranslationModule, DogsModule],
  controllers: [AppController],
  providers: [AppService, BiographyService],
})
export class AppModule {}
