import { Test, TestingModule } from '@nestjs/testing';
import { BiographyService } from './biography.service';
import { TranslationModule } from '../translation/translation.module';
import { HOBBIES } from '../../shared/constants/hobbies';
import { DISLIKES } from '../../shared/constants/dislikes';

describe('BiographyService', () => {
  let service: BiographyService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        BiographyService,
      ],
      imports: [
        TranslationModule,
      ],
    }).compile();

    service = module.get<BiographyService>(BiographyService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('#getBio', () => {
    it('should return a `Biography`', () => {
      const testEval = service.getBio();
      expect(testEval).toBeDefined();
      expect(testEval.dislikes).toBeInstanceOf(Array);
      expect(testEval.hobbies).toBeInstanceOf(Array);
      expect(typeof testEval.text).toBe('string');
      expect(testEval.text.length).toBeGreaterThan(0);
    });
  });

  describe('#getHobbies', () => {
    it('should return an array', () => {
      const testEval = service['getHobbies']();
      expect(testEval).toBeInstanceOf(Array);
    });

    it('should be composed of hobbies', () => {
      const testEval = service['getHobbies']();
      testEval.forEach((val) => {
        expect(typeof val).toBe('string');
        expect(HOBBIES.includes(val)).toBe(true);
      });
    });
  });

  describe('#getDislikes', () => {
    it('should return an array', () => {
      const testEval = service['getDislikes']();
      expect(testEval).toBeInstanceOf(Array);
    });

    it('should be composed of dislikes', () => {
      const testEval = service['getDislikes']();
      testEval.forEach((val) => {
        expect(typeof val).toBe('string');
        expect(DISLIKES.includes(val)).toBe(true);
      });
    });
  });

  describe('#getBioText', () => {
    it('#should return a string of hobbiesString and dislikesString', () => {
      spyOn<any>(service, 'getHobbiesString').and.returnValue(true);
      spyOn<any>(service, 'getDislikesString').and.returnValue(true);
      service['getBioText']([], []);
      expect(service['getHobbiesString']).toHaveBeenCalled();
      expect(service['getDislikesString']).toHaveBeenCalled();
    });

    it('should return a DoggoTranslated string', () => {
      spyOn<any>(service, 'translateText').and.returnValue(true);
      service['getBioText']([], []);
      expect(service['translateText']).toHaveBeenCalled();
    });
  });

  describe('#translateText', () => {
    it('should delegate to translation service', () => {
      spyOn(service['translationService'], 'translate').and.returnValue(true);
      service['translateText']('');
      expect(service['translationService'].translate).toHaveBeenCalled();
    });
  });

  describe('#getHobbiesString', () => {
    it('should call #getDescribedSentence with a sensible prefix', () => {
      spyOn<any>(service, 'getDescribedListSentence').and.returnValue(true);
      service['getHobbiesString']([]);
      expect(service['getDescribedListSentence']).toHaveBeenCalledWith('I enjoy', []);
    });
  });

  describe('#getDislikesString', () => {
    it('should call #getDescribedSentence with a sensible prefix', () => {
      spyOn<any>(service, 'getDescribedListSentence').and.returnValue(true);
      service['getDislikesString']([]);
      expect(service['getDescribedListSentence']).toHaveBeenCalledWith('I\'m really not a fan of', [], 'or');
    });
  });

  describe('#getDescribedListSentence', () => {
    it('should return a sensible string of hobbies', () => {
      const mockDescription = 'I enjoy';
      const mockHobbies = ['laughing', 'crying', 'eating', 'fighting'];
      const testEval = service['getDescribedListSentence'](mockDescription, mockHobbies);
      expect(testEval).toContain(mockHobbies[0]);
      expect(testEval).toContain(mockHobbies[1]);
    });

    it('should have pretty correct punctuation', () => {
      const mockDescription = 'I enjoy';
      const mockHobbies = ['laughing', 'crying', 'eating', 'fighting'];
      const testEval = service['getDescribedListSentence'](mockDescription, mockHobbies);
      expect(testEval.replace(/[^a]/g, '').length).toBe(3);
    });

    it('should have a configurable joiner', () => {
      const mockDescription = 'I enjoy';
      const mockHobbies = ['laughing', 'crying', 'eating', 'fighting'];
      const mockJoiner = 'with';
      const testEval = service['getDescribedListSentence'](mockDescription, mockHobbies, mockJoiner);
      expect(testEval).toContain(mockJoiner);
    });
  });

  describe('#getRandomBoundedIndices', () => {
    it('should return an array of non duplicate values', () => {
      const mockArr = [1, 2, 3, 4, 5, 6, 8, 9, 10];
      const mockCount = 5;
      const testEval = service['getRandomBoundedIndices'](mockArr, mockCount);
      expect(testEval).toHaveLength(mockCount);
      expect([...new Set(testEval)]).toHaveLength(mockCount);
    });
  });

  describe('#getRandomBoundedInteger', () => {
    it('should return a whole number no more than the upper bound', () => {
      const mockBound = 5;
      const testEval = service['getRandomBoundedInteger'](mockBound);
      expect(testEval).toBeLessThanOrEqual(mockBound);
      expect(testEval % 1).toBe(0);
    });
  });
});
