import { RandomUserResponseInfo } from './random-user-response-info.model';
import { RandomUserPerson } from './random-user-person.model';

export interface RandomUserResponse {
  results: RandomUserPerson[];
  info: RandomUserResponseInfo;
}
