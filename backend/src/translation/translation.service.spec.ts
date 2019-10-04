import { Test, TestingModule } from '@nestjs/testing';
import { TranslationService } from './translation.service';
import { DoggoTranslator } from '@tabuckner/doggo-translator-ts';

describe('TranslationService', () => {
  let service: TranslationService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [TranslationService],
    }).compile();

    service = module.get<TranslationService>(TranslationService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  it('should instantiate a new DoggoTranslator', () => {
    expect(service['translator']).toBeInstanceOf(DoggoTranslator);
  });

  describe('#translate', () => {
    it('should delegate translations to DoggoTranslator instance', () => {
      spyOn(service['translator'], 'translateSentence').and.returnValue(true);
      service.translate('');
      expect(service['translator'].translateSentence).toHaveBeenCalled();
    });
  });
});
