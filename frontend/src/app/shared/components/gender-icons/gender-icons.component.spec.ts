import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GenderIconsComponent } from './gender-icons.component';

describe('GenderIconsComponent', () => {
  let component: GenderIconsComponent;
  let fixture: ComponentFixture<GenderIconsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GenderIconsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GenderIconsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
