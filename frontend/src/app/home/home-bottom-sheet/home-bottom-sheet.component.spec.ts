import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeBottomSheetComponent } from './home-bottom-sheet.component';
import { HOME_MAT_IMPORTS } from '../home.module';
import { MatBottomSheetRef } from '@angular/material';

describe('HomeBottomSheetComponent', () => {
  let component: HomeBottomSheetComponent;
  let fixture: ComponentFixture<HomeBottomSheetComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HomeBottomSheetComponent ],
      imports: [
        ...HOME_MAT_IMPORTS
      ],
      providers: [
        { provide: MatBottomSheetRef, useValue: {} }
      ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeBottomSheetComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
