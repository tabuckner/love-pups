import { Biography } from '../../../services/biography/biography.interface';
import { RANDOM_USER_GENDERS } from '../../../services/random-user/constants/genders.enum';
import { RandomUserName } from '../../../services/random-user/models/random-user-name.model';
import { RandomUserLocation } from '../../../services/random-user/models/random-user-location.model';
import { RandomUserDob } from '../../../services/random-user/models/random-user-dob.model';
import { DogImageWithBreed } from '../../../services/dog-image/models/dog-image-with-breed.model';

export interface DogEntity {
  gender: RANDOM_USER_GENDERS;
  name: RandomUserName;
  location: RandomUserLocation;
  dob: RandomUserDob;
  bio: Biography;
  image: DogImageWithBreed;
}
