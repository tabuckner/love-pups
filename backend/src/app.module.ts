import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { BiographyModule } from './biography/biography.module';
import { BiographyService } from './biography/biography.service';

@Module({
  imports: [BiographyModule],
  controllers: [AppController],
  providers: [AppService, BiographyService],
})
export class AppModule {}
