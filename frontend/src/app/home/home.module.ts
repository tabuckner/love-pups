import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home.component';
import { HomeRoutingModule } from './home.routing';
import { MatBottomSheetModule, MatButtonModule } from '@angular/material';
import { HomeBottomSheetComponent } from './home-bottom-sheet/home-bottom-sheet.component';

export const HOME_MAT_IMPORTS = [
  MatBottomSheetModule,
  MatButtonModule
];

@NgModule({
  declarations: [
    HomeComponent,
    HomeBottomSheetComponent
  ],
  imports: [
    CommonModule,
    HomeRoutingModule,
    ...HOME_MAT_IMPORTS
  ],
  exports: [
    HomeComponent,
    HomeBottomSheetComponent
  ],
  entryComponents: [
    HomeBottomSheetComponent
  ]
})
export class HomeModule { }
