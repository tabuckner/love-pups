import { Test, TestingModule } from '@nestjs/testing';
import { DogEntitiesService } from './dog-entities.service';
import { BiographyModule } from '../biography/biography.module';
import { RandomUserModule } from '../random-user/random-user.module';
import { DogImageModule } from '../dog-image/dog-image.module';
import { of } from 'rxjs';

describe('DogEntitiesService', () => {
  let service: DogEntitiesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [
        BiographyModule,
        RandomUserModule,
        DogImageModule,
      ],
      providers: [DogEntitiesService],
    }).compile();

    service = module.get<DogEntitiesService>(DogEntitiesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('#getDogEntity', () => {
    it('should call the biography service', () => {
      spyOn(service['bioService'], 'getBio').and.returnValue(true);
      service.getDogEntity();
      expect(service['bioService'].getBio).toHaveBeenCalled();
    });

    it('should merge bio and random user', (done) => {
      spyOn(service['randomUserService'], 'getRandomPerson').and.returnValue(of({ person: true }));
      spyOn(service['bioService'], 'getBio').and.returnValue(true);
      service.getDogEntity().subscribe(res => {
        expect(res).toMatchObject({ person: true, bio: true });
        done();
      });
      expect(service['randomUserService'].getRandomPerson).toHaveBeenCalled();
    });
  });

  describe('#getDogEntities', () => {
    beforeEach(() => {
      spyOn(service['randomUserService'], 'getRandomPerson').and.returnValue(of({ person: true }));
      spyOn(service['randomUserService'], 'getRandomPeople').and.returnValue(of([{ person: true }, { person: true }, { person: true }]));
      spyOn(service['bioService'], 'getBio').and.returnValue({ bio: true });
    });

    it('should return the requested quantity', (done) => {
      service.getDogEntities(3).subscribe(res => {
        expect(res.length).toBe(3);
        done();
      });
    });

    it('should get the appropriate number of random bios', (done) => {
      service.getDogEntities(3).subscribe(res => done());
      expect(service['bioService'].getBio).toHaveBeenCalledTimes(3);
    });
  });
});
