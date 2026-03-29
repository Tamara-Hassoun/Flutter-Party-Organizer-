class RecentEvent {
  bool? status;
  List<RecentData>? data;
  String? message;

  RecentEvent({this.status, this.data, this.message});

  RecentEvent.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <RecentData>[];
      json['data'].forEach((v) {
        data!.add(new RecentData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class RecentData {
  int? id;
  String? name;
  String? type;
  int? price;
  String? location;
  Null? description;
  int? numberOfAttendees;
  int? numberOfTickets;
  String? date;
  String? createdAt;
  String? updatedAt;
  List<String>? images;

  RecentData(
      {this.id,
      this.name,
      this.type,
      this.price,
      this.location,
      this.description,
      this.numberOfAttendees,
      this.numberOfTickets,
      this.date,
      this.createdAt,
      this.updatedAt,
      this.images});

  RecentData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    price = json['price'];
    location = json['location'];
    description = json['description'];
    numberOfAttendees = json['Number_of_attendees'];
    numberOfTickets = json['Number_of_tickets'];
    date = json['date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['price'] = this.price;
    data['location'] = this.location;
    data['description'] = this.description;
    data['Number_of_attendees'] = this.numberOfAttendees;
    data['Number_of_tickets'] = this.numberOfTickets;
    data['date'] = this.date;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['images'] = this.images;
    return data;
  }
}