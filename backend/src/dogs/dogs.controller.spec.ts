import { Test, TestingModule } from '@nestjs/testing';
import { DogsController } from './dogs.controller';
import { BiographyModule } from '../biography/biography.module';
import { RandomUserModule } from '../random-user/random-user.module';
import { of } from 'rxjs';

describe('Dogs Controller', () => {
  let controller: DogsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [DogsController],
      imports: [
        BiographyModule,
        RandomUserModule,
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
      controller.root();
      expect(controller['bioService'].getBio).toHaveBeenCalled();
    });

    it('should merge bio and random user', (done) => {
      spyOn(controller['randomUserService'], 'getRandomPerson').and.returnValue(of({ person: true }));
      spyOn(controller['bioService'], 'getBio').and.returnValue(true);
      controller.root().subscribe(res => {
        expect(res).toMatchObject({ person: true, bio: true });
        done();
      });
      expect(controller['randomUserService'].getRandomPerson).toHaveBeenCalled();
    });
  });

  describe('#getCount', () => {
    beforeEach(() => {
      spyOn(controller['randomUserService'], 'getRandomPerson').and.returnValue(of({ person: true }));
      spyOn(controller['randomUserService'], 'getRandomPeople').and.returnValue(of([{ person: true }, { person: true }, { person: true }]));
      spyOn(controller['bioService'], 'getBio').and.returnValue({ bio: true });
    });

    it('should return the requested quantity', (done) => {
      controller.getCount(3).subscribe(res => {
        expect(res.length).toBe(3);
        done();
      });
    });

    it('should get the appropriate number of random bios', (done) => {
      controller.getCount(3).subscribe(res => done());
      expect(controller['bioService'].getBio).toHaveBeenCalledTimes(3);
    });
  });
});
