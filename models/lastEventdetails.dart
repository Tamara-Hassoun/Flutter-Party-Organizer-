class lastEventDetails {
  String? userName;
  String? event;
  Place? place;
  List<String>? images;

  lastEventDetails({this.userName, this.event, this.place, this.images});

  lastEventDetails.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    event = json['event'];
    place = json['place'] != null ? new Place.fromJson(json['place']) : null;
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['event'] = this.event;
    if (this.place != null) {
      data['place'] = this.place!.toJson();
    }
    data['images'] = this.images;
    return data;
  }
}

class Place {
  String? name;
  dynamic parentName;
  int? price;
  String? phoneNumber;
  String? description;
  String? tele;
  String? place;
  String? city;

  Place(
      {this.name,
      this.parentName,
      this.price,
      this.phoneNumber,
      this.description,
      this.tele,
      this.place,
      this.city});

  Place.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    parentName = json['parent_name'];
    price = json['price'];
    phoneNumber = json['PhoneNumber'];
    description = json['description'];
    tele = json['tele'];
    place = json['place'];
    city = json['City'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['parent_name'] = this.parentName;
    data['price'] = this.price;
    data['PhoneNumber'] = this.phoneNumber;
    data['description'] = this.description;
    data['tele'] = this.tele;
    data['place'] = this.place;
    data['City'] = this.city;
    return data;
  }
}