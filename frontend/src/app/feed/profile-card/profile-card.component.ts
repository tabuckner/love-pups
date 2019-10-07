import { Component, Input } from '@angular/core';
import { DogEntity } from 'src/app/shared/models/dog-entity.model';

@Component({
  selector: 'app-profile-card',
  templateUrl: './profile-card.component.html',
  styleUrls: ['./profile-card.component.scss']
})
export class ProfileCardComponent {
  @Input() public dog: DogEntity;

  constructor() { }

  public get dogAge(): number {
    return Math.floor(this.dog.dob.age / 7);
  }

}
