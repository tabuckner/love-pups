import { Test, TestingModule } from '@nestjs/testing';
import { DogImageService } from './dog-image.service';
import { HttpModule } from '@nestjs/common';
import { of } from 'rxjs';

describe('DogImageService', () => {
  let service: DogImageService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [
        HttpModule,
      ],
      providers: [DogImageService],
    }).compile();

    service = module.get<DogImageService>(DogImageService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('getRandomImage', () => {

    beforeEach(() => {
      spyOn<any>(service, 'getRandomImageEndpoint').and.returnValue(of({ data: { message: '' } }));
      spyOn<any>(service, 'getDogBreedFromImageUrl').and.returnValue(of({ data: { message: '' } }));
      spyOn<any>(service['http'], 'get').and.returnValue(of({ data: { message: '' } }));
    });

    it('should get the random image url', () => {
      service['getRandomImage']();
      expect(service['getRandomImageEndpoint']).toHaveBeenCalled();
    });

    it('should parse breed from api response', (done) => {
      service['getRandomImage']().subscribe(() => {
        expect(service['getDogBreedFromImageUrl']).toHaveBeenCalledWith('');
        done();
      });
    });
  });

  describe('getRandomImages', () => {

    beforeEach(() => {
      spyOn<any>(service, 'getRandomImageEndpoint').and.returnValue(of({ data: { message: '' } }));
      spyOn<any>(service, 'getDogBreedFromImageUrl').and.returnValue(true);
      spyOn<any>(service['http'], 'get').and.returnValue(of({ data: { message: ['', '', ''] } }));
    });

    it('should get the random image url', () => {
      service['getRandomImages'](3);
      expect(service['getRandomImageEndpoint']).toHaveBeenCalled();
    });

    it('should parse breed from api response', (done) => {
      service['getRandomImages'](3).subscribe((res) => {
        expect(res.length).toBe(3);
        expect(service['getDogBreedFromImageUrl']).toHaveBeenCalledWith('');
        expect(service['getDogBreedFromImageUrl']).toHaveBeenCalledTimes(3);
        done();
      });
    });
  });
});
