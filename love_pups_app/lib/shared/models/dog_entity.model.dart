import 'biography.model.dart';
import 'dog_image_with_breed.model.dart';
import 'random-user/random_user_dob.model.dart';
import 'random-user/random_user_location.model.dart';
import 'random-user/random_user_name.model.dart';

class DogEntity {
  String gender;
  RandomUserName name;
  RandomUserLocation location;
  RandomUserDob dob;
  Biography bio;
  DogImageWithBreed image;

  DogEntity(
      {this.gender, this.name, this.location, this.dob, this.image, this.bio});

  DogEntity.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name =
        json['name'] != null ? new RandomUserName.fromJson(json['name']) : null;
    location = json['location'] != null
        ? new RandomUserLocation.fromJson(json['location'])
        : null;
    dob = json['dob'] != null ? new RandomUserDob.fromJson(json['dob']) : null;
    bio = json['bio'] != null ? new Biography.fromJson(json['bio']) : null;
    image = json['image'] != null
        ? new DogImageWithBreed.fromJson(json['image'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    if (this.name != null) {
      data['name'] = this.name.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    if (this.dob != null) {
      data['dob'] = this.dob.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    if (this.bio != null) {
      data['bio'] = this.bio.toJson();
    }
    return data;
  }
}
