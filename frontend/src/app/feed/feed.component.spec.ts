import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { HttpClientTestingModule } from '@angular/common/http/testing';

import { FeedComponent } from './feed.component';
import { GenderIconsModule } from '../shared/components/gender-icons/gender-icons.module';
import { ProfileCardComponent } from './profile-card/profile-card.component';
import { FEED_MODULE_MAT_IMPORTS } from './feed.module';
import { MOCK_DOGS_PAYLOAD } from 'src/test/mock-dogs-payload';

describe('FeedComponent', () => {
  let component: FeedComponent;
  let fixture: ComponentFixture<FeedComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ProfileCardComponent, FeedComponent],
      imports: [GenderIconsModule, ...FEED_MODULE_MAT_IMPORTS, HttpClientTestingModule]
    })
      .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FeedComponent);
    component = fixture.componentInstance;
    component.dogs = MOCK_DOGS_PAYLOAD;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
