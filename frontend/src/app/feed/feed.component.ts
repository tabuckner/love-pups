import { Component, OnInit } from '@angular/core';
import { DogEntityService } from '../shared/services/dog-entity.service';
import { DogEntity } from '../shared/models/dog-entity.model';

@Component({
  selector: 'app-feed',
  templateUrl: './feed.component.html',
  styleUrls: ['./feed.component.scss']
})
export class FeedComponent implements OnInit {
  public dogs: DogEntity[];

  constructor(private dogEntity: DogEntityService) { }

  ngOnInit() {
    this.dogEntity.getRandomDogEntities(10).subscribe(dogs => this.dogs = dogs);
  }

}
