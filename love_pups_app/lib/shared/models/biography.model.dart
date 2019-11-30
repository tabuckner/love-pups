class Biography {
  List<String> hobbies;
  List<String> dislikes;
  String text;

  Biography({this.hobbies, this.dislikes, this.text});

  Biography.fromJson(Map<String, dynamic> json) {
    hobbies = json['hobbies'].cast<String>();
    dislikes = json['dislikes'].cast<String>();
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hobbies'] = this.hobbies;
    data['dislikes'] = this.dislikes;
    data['text'] = this.text;
    return data;
  }
}