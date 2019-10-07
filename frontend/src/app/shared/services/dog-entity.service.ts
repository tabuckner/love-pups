import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { DogEntity } from '../models/dog-entity.model';

const PROTOCOL = 'http';
const HOSTNAME = `0.0.0.0`;
const PORT = 3000;

@Injectable({
  providedIn: 'root'
})
export class DogEntityService {
  private readonly baseUrl = `${PROTOCOL}://${HOSTNAME}:${PORT}`;

  constructor(private http: HttpClient) { }

  public getRandomDogEntity(): Observable<DogEntity> {
    const url = `${this.baseUrl}/dogs`;
    return this.http.get<DogEntity>(url);
  }

  public getRandomDogEntities(quantity: number): Observable<DogEntity[]> {
    const url = `${this.baseUrl}/dogs/${quantity}`;
    return this.http.get<DogEntity[]>(url);
  }
}
