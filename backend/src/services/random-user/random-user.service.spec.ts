import { Test, TestingModule } from '@nestjs/testing';
import { RandomUserService } from './random-user.service';
import { RandomUserResponse } from './models/random-user-response.model';
import { AxiosResponse } from 'axios';
import { of } from 'rxjs';
import { HttpModule } from '@nestjs/common';

describe('RandomUserService', () => {
  let service: RandomUserService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [RandomUserService],
      imports: [
        HttpModule,
      ],
    }).compile();

    service = module.get<RandomUserService>(RandomUserService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('#getRandomPerson', () => {
    it('should build the url', () => {
      spyOn<any>(service, 'buildUrl').and.returnValue(true);
      service.getRandomPerson();
      expect(service['buildUrl']).toHaveBeenCalled();
    });

    it('should extract the results as a single result from the 3p API Response', (done) => {
      const mockResponse: Partial<AxiosResponse<Partial<RandomUserResponse>>> = { data: { results: [true] as any } };
      spyOn(service['http'], 'get').and.returnValue(of(mockResponse));
      service.getRandomPerson().subscribe(res => {
        expect(res).toBe(mockResponse.data.results[0]);
        done();
      });
    });
  });

  describe('#getRandomPeople', () => {
    it('should build the url', () => {
      spyOn<any>(service, 'buildUrl').and.returnValue(true);
      service.getRandomPerson();
      expect(service['buildUrl']).toHaveBeenCalled();
    });

    it('should extract the results from the 3p API Response', () => {
      const mockResponse: Partial<AxiosResponse<Partial<RandomUserResponse>>> = { data: { results: [true, true, true] as any } };
      spyOn(service['http'], 'get').and.returnValue(of(mockResponse));
      service.getRandomPeople(3).subscribe(res => {
        expect(res.length).toBe(3);
      });
    });
  });

  describe('#buildUrl', () => {
    beforeEach(() => {
      spyOn<any>(service, 'getIncludes').and.returnValue(true);
      spyOn<any>(service, 'getNationalities').and.returnValue(true);
    });

    it('should return our default settings', () => {
      service['buildUrl']();
      expect(service['getIncludes']).toHaveBeenCalled();
      expect(service['getNationalities']).toHaveBeenCalled();
    });

    it('should optionally add a count', () => {
      spyOn<any>(service, 'getPagination').and.returnValue(true);
      service['buildUrl'](2);
      expect(service['getPagination']).toHaveBeenCalledWith(2);
    });
  });
});
