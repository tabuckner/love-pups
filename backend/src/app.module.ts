import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DogsModule } from './controllers/dogs/dogs.module';
import { DogEntitiesModule } from './services/dog-entities/dog-entities.module';

@Module({
  imports: [
    DogsModule,
    DogEntitiesModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
