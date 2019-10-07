export interface DogEntity {
  gender: string;
  name: Name;
  location: Location;
  dob: Dob;
  image: Image;
  bio: Bio;
}
export interface Name {
  title: string;
  first: string;
  last: string;
}
export interface Location {
  street: Street;
  city: string;
  state: string;
  country: string;
  postcode: number | string;
  coordinates: Coordinates;
  timezone: Timezone;
}
export interface Street {
  number: number;
  name: string;
}
export interface Coordinates {
  latitude: string;
  longitude: string;
}
export interface Timezone {
  offset: string;
  description: string;
}
export interface Dob {
  date: string;
  age: number;
}
export interface Image {
  imageUrl: string;
  breed: string;
}
export interface Bio {
  hobbies?: (string)[] | null;
  dislikes?: (string)[] | null;
  text: string;
}
