import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FeedComponent } from './feed.component';
import { FeedRoutingModule } from './feed.routing';
import { ProfileCardComponent } from './profile-card/profile-card.component';
import { GenderIconsModule } from '../shared/components/gender-icons/gender-icons.module';
import { MatButtonModule, MatIconModule } from '@angular/material';

export const FEED_MODULE_MAT_IMPORTS = [
  MatButtonModule,
  MatIconModule
];

@NgModule({
  declarations: [FeedComponent, ProfileCardComponent],
  imports: [
    CommonModule,
    FeedRoutingModule,
    GenderIconsModule,
    ...FEED_MODULE_MAT_IMPORTS
  ]
})
export class FeedModule { }
