import { Test, TestingModule } from '@nestjs/testing';
import { DogsController } from './dogs.controller';
import { BiographyModule } from '../biography/biography.module';

describe('Dogs Controller', () => {
  let controller: DogsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [DogsController],
      imports: [
        BiographyModule,
      ],
    }).compile();

    controller = module.get<DogsController>(DogsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('root', () => {
    it('should call the biography service', () => {
      spyOn(controller['bioService'], 'getBio').and.returnValue(true);
      controller.getTest();
      expect(controller['bioService'].getBio).toHaveBeenCalled();
    });
  });
});
