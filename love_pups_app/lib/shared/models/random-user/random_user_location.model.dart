import 'random_user_coordinates.model.dart';
import 'random_user_street.model.dart';
import 'random_user_timezone.model.dart';

class RandomUserLocation {
  RandomUserStreet street;
  String city;
  String state;
  String postcode;
  RandomUserCoordinates coordinates;
  RandomUserTimezone timezone;

  RandomUserLocation(
      {this.street,
      this.city,
      this.state,
      this.postcode,
      this.coordinates,
      this.timezone});

  RandomUserLocation.fromJson(Map<String, dynamic> json) {
    street =
        json['street'] != null ? new RandomUserStreet.fromJson(json['street']) : null;
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'].toString();
    coordinates = json['coordinates'] != null
        ? new RandomUserCoordinates.fromJson(json['coordinates'])
        : null;
    timezone = json['timezone'] != null
        ? new RandomUserTimezone.fromJson(json['timezone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.street != null) {
      data['street'] = this.street.toJson();
    }
    data['city'] = this.city;
    data['state'] = this.state;
    data['postcode'] = this.postcode;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates.toJson();
    }
    if (this.timezone != null) {
      data['timezone'] = this.timezone.toJson();
    }
    return data;
  }
}
