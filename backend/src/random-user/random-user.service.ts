import { Injectable, HttpService } from '@nestjs/common';
import { RANDOM_USER_INCLUDES_ENUM } from './constants/includes.enum';
import { RANDOM_PERSON_NATIONALITIES_ENUM } from './constants/nationalities.enum';
import { RandomUserResponse } from './models/random-user-response.model';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { RandomUserPerson } from './models/random-user-person.model';

@Injectable()
export class RandomUserService {
  private readonly baseUrl = 'https://randomuser.me/api';

  constructor(private http: HttpService) { }

  public getRandomPerson(): Observable<RandomUserPerson> {
    const url = this.buildUrl();
    return this.http.get<RandomUserResponse>(url)
      .pipe(map(response => response.data.results[0]));
  }

  public getRandomPeople(quantity: number): Observable<RandomUserPerson[]> {
    const url = this.buildUrl(quantity);
    return this.http.get<RandomUserResponse>(url)
      .pipe(map(response => response.data.results));
  }

  private buildUrl(quantity?: number): string {
    const partial = `${this.baseUrl}/?${this.getIncludes()}&${this.getNationalities()}`;
    return quantity ? `${partial}&${this.getPagination(quantity)}` : partial;
  }

  private getIncludes(): string {
    const props = [
      RANDOM_USER_INCLUDES_ENUM.name,
      RANDOM_USER_INCLUDES_ENUM.location,
      RANDOM_USER_INCLUDES_ENUM.dob,
      RANDOM_USER_INCLUDES_ENUM.gender,
    ];
    return `inc=${props.join(',')}`;
  }

  private getNationalities(): string {
    const props = [
      RANDOM_PERSON_NATIONALITIES_ENUM.canada,
      RANDOM_PERSON_NATIONALITIES_ENUM.unitedStates,
      RANDOM_PERSON_NATIONALITIES_ENUM.greatBritain,
    ];
    return `nat=${props.join(',')}`;
  }

  private getPagination(quantity: number): string {
    return `page=1&results=${quantity}`;
  }
}
