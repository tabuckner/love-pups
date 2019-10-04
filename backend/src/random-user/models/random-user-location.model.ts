export interface RandomUserLocation {
  street: string;
  city: string;
  state: string;
  postcode: string;
  coordinates: {
    latitude: string,
    longitude: string,
  };
  timezone: {
    offset: string,
    description: string,
  };
}
