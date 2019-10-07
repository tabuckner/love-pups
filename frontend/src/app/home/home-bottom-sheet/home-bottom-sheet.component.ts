import { Component, Inject, Optional } from '@angular/core';
import { MAT_BOTTOM_SHEET_DATA, MatBottomSheetRef } from '@angular/material';

@Component({
  selector: 'app-home-bottom-sheet',
  templateUrl: './home-bottom-sheet.component.html',
  styleUrls: ['./home-bottom-sheet.component.scss']
})
export class HomeBottomSheetComponent {

  constructor(@Optional() @Inject(MAT_BOTTOM_SHEET_DATA) public data: { appName: string },
              private bottomSheetRef: MatBottomSheetRef<HomeBottomSheetComponent>) {}

  onClickFeed(): void {
    this.bottomSheetRef.dismiss();
  }

}
