import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ProfileCardComponent } from './profile-card.component';
import { FEED_MODULE_MAT_IMPORTS } from '../feed.module';
import { MOCK_DOGS_PAYLOAD } from 'src/test/mock-dogs-payload';
import { GenderIconsModule } from 'src/app/shared/components/gender-icons/gender-icons.module';

describe('ProfileCardComponent', () => {
  let component: ProfileCardComponent;
  let fixture: ComponentFixture<ProfileCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ProfileCardComponent ],
      imports: [...FEED_MODULE_MAT_IMPORTS, GenderIconsModule]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ProfileCardComponent);
    component = fixture.componentInstance;
    component.dog = MOCK_DOGS_PAYLOAD[2]
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
