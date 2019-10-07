import { TestBed } from '@angular/core/testing';

import { DogEntityService } from './dog-entity.service';
import { HttpClientTestingModule } from '@angular/common/http/testing';

describe('DogEntityService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      imports: [
        HttpClientTestingModule
      ]
    });
  });

  it('should be created', () => {
    const service: DogEntityService = TestBed.get(DogEntityService);
    expect(service).toBeTruthy();
  });
});
