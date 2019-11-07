class DogImageWithBreed {
  String imageUrl;
  String breed;

  DogImageWithBreed({this.imageUrl, this.breed});

  DogImageWithBreed.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    breed = json['breed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['breed'] = this.breed;
    return data;
  }
}