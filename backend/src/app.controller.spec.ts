import { Test, TestingModule } from '@nestjs/testing';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { BiographyModule } from './biography/biography.module';

describe('AppController', () => {
  let appController: AppController;

  beforeEach(async () => {
    const app: TestingModule = await Test.createTestingModule({
      controllers: [AppController],
      providers: [AppService],
      imports: [
        BiographyModule,
      ],
    }).compile();

    appController = app.get<AppController>(AppController);
  });

  describe('root', () => {
    it('should return "Hello World!"', () => {
      expect(appController.getHello()).toBe('Hello World!');
    });
  });

  describe('#getTest', () => {
    it('should call the biography service', () => {
      spyOn(appController['bioService'], 'getBio').and.returnValue(true);
      appController.getTest();
      expect(appController['bioService'].getBio).toHaveBeenCalled();
    });
  });
});
