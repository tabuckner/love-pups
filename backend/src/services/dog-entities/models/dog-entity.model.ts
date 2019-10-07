import { Biography } from '../../biography/biography.interface';
import { RANDOM_USER_GENDERS } from '../../random-user/constants/genders.enum';
import { RandomUserName } from '../../random-user/models/random-user-name.model';
import { RandomUserLocation } from '../../random-user/models/random-user-location.model';
import { RandomUserDob } from '../../random-user/models/random-user-dob.model';
import { DogImageWithBreed } from '../../dog-image/models/dog-image-with-breed.model';

export interface DogEntity {
  gender: RANDOM_USER_GENDERS;
  name: RandomUserName;
  location: RandomUserLocation;
  dob: RandomUserDob;
  bio: Biography;
  image: DogImageWithBreed;
}
