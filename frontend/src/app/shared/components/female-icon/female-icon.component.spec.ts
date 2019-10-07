import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FemaleIconComponent } from './female-icon.component';

describe('FemaleIconComponent', () => {
  let component: FemaleIconComponent;
  let fixture: ComponentFixture<FemaleIconComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FemaleIconComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FemaleIconComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
