import { Test, TestingModule } from '@nestjs/testing';
import { DogImageService } from './dog-image.service';
import { HttpModule } from '@nestjs/common';

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
});
