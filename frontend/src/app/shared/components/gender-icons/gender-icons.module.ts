import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { GenderIconsComponent } from './gender-icons.component';

@NgModule({
  declarations: [GenderIconsComponent],
  imports: [
    CommonModule
  ],
  exports: [GenderIconsComponent]
})
export class GenderIconsModule { }
