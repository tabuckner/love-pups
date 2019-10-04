import { Test, TestingModule } from '@nestjs/testing';
import { DogsController } from './dogs.controller';
import { DogEntitiesModule } from '../../services/dog-entities/dog-entities.module';

describe('Dogs Controller', () => {
  let controller: DogsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [DogsController],
      imports: [
        DogEntitiesModule,
      ],
    }).compile();

    controller = module.get<DogsController>(DogsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  describe('root', () => {
    it('should delegate to DogsService#getDogEntity', () => {
      spyOn(controller['dogEntitiesService'], 'getDogEntity').and.returnValue(true);
      controller.root();
      expect(controller['dogEntitiesService'].getDogEntity).toHaveBeenCalled();
    });
  });

  describe('#getCount', () => {

    it('should delegate to DogsService#getDogEntities', () => {
      spyOn(controller['dogEntitiesService'], 'getDogEntities').and.returnValue(true);
      controller.getQuantity(3);
      expect(controller['dogEntitiesService'].getDogEntities).toHaveBeenCalledWith(3);
    });
  });
});
