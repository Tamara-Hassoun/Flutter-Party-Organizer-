class lastEvent {
  int? id;
  String? userName;
  Event? event;
  String? place;
  List<String>? images;
  int? averageRating;
  int? totalRatings;
  RatingsPercentage? ratingsPercentage;
  List<Comments>? comments;

  lastEvent(
      {this.id,
      this.userName,
      this.event,
      this.place,
      this.images,
      this.averageRating,
      this.totalRatings,
      this.ratingsPercentage,
      this.comments});

  lastEvent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    event = json['event'] != null ? new Event.fromJson(json['event']) : null;
    place = json['place'];
    images = json['images'].cast<String>();
    averageRating = json['average_rating'];
    totalRatings = json['total_ratings'];
    ratingsPercentage = json['ratings_percentage'] != null
        ? new RatingsPercentage.fromJson(json['ratings_percentage'])
        : null;
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    if (this.event != null) {
      data['event'] = this.event!.toJson();
    }
    data['place'] = this.place;
    data['images'] = this.images;
    data['average_rating'] = this.averageRating;
    data['total_ratings'] = this.totalRatings;
    if (this.ratingsPercentage != null) {
      data['ratings_percentage'] = this.ratingsPercentage!.toJson();
    }
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Event {
  int? id;
  String? categories;

  Event({this.id, this.categories});

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categories = json['categories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categories'] = this.categories;
    return data;
  }
}

class RatingsPercentage {
  int? i1;
  int? i2;
  int? i3;
  int? i4;
  int? i5;

  RatingsPercentage({this.i1, this.i2, this.i3, this.i4, this.i5});

  RatingsPercentage.fromJson(Map<String, dynamic> json) {
    i1 = json['1'];
    i2 = json['2'];
    i3 = json['3'];
    i4 = json['4'];
    i5 = json['5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.i1;
    data['2'] = this.i2;
    data['3'] = this.i3;
    data['4'] = this.i4;
    data['5'] = this.i5;
    return data;
  }
}

class Comments {
  String? userName;
  String? comment;

  Comments({this.userName, this.comment});

  Comments.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['comment'] = this.comment;
    return data;
  }
}
