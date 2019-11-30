class RandomUserTimezone {
  String offset;
  String description;

  RandomUserTimezone({this.offset, this.description});

  RandomUserTimezone.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['description'] = this.description;
    return data;
  }
}
