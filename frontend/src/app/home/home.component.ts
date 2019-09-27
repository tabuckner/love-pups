import { Component, OnInit, AfterViewInit } from '@angular/core';
import { MatBottomSheet } from '@angular/material';
import { HomeBottomSheetComponent } from './home-bottom-sheet/home-bottom-sheet.component';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements AfterViewInit {

  constructor(private bottomSheet: MatBottomSheet) { }

  ngAfterViewInit() {
    setTimeout(() => {
      this.bottomSheet.open(HomeBottomSheetComponent, { data: { appName: 'Love Pups' } });
    });
  }

}
