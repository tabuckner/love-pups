import { RandomUserName } from './random-user-name.model';
import { RandomUserLocation } from './random-user-location.model';
import { RandomUserLogin } from './random-user-login.model';
import { RandomUserDob } from './random-user-dob.model';
import { RandomUserRegistered } from './random-user-registered.model';
import { RandomUserId } from './random-user-id.model';
import { RandomUserPicture } from './random-user-picture.model';
import { RANDOM_USER_INCLUDES_ENUM } from '../constants/includes.enum';
import { RANDOM_USER_GENDERS } from '../constants/genders.enum';

export interface RandomUserPerson {
  gender: RANDOM_USER_GENDERS;
  name: RandomUserName;
  location: RandomUserLocation;
  email: string;
  login: RandomUserLogin;
  dob: RandomUserDob;
  registered: RandomUserRegistered;
  phone: string;
  cell: string;
  id: RandomUserId;
  picture: RandomUserPicture;
  nat: RANDOM_USER_INCLUDES_ENUM;
}
