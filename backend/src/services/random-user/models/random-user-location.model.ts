export interface RandomUserLocation {
  street: {
    number: number,
    name: string,
  };
  city: string;
  state: string;
  postcode: string;
  country: string;
  coordinates: {
    latitude: string,
    longitude: string,
  };
  timezone: {
    offset: string,
    description: string,
  };
}
