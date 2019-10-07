import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-gender-icons',
  templateUrl: './gender-icons.component.html',
  styleUrls: ['./gender-icons.component.scss']
})
export class GenderIconsComponent {
  @Input() public gender: string; // TODO:
}
