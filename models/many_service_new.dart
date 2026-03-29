class manyServiceNew {
  bool? status;
  List<DataService>? data;
  String? message;

  manyServiceNew({this.status, this.data, this.message});

  manyServiceNew.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <DataService>[];
      json['data'].forEach((v) {
        data!.add(new DataService.fromJson(v));
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

class DataService {
  int? id;
  String? categories;
  String? image;
  List<ChildrenService1>? children;

  DataService({this.id, this.categories, this.image, this.children});

  DataService.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categories = json['categories'];
    image = json['image'];
    if (json['children'] != null) {
      children = <ChildrenService1>[];
      json['children'].forEach((v) {
        children!.add(new ChildrenService1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categories'] = this.categories;
    data['image'] = this.image;
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChildrenService1 {
  int? id;
  String? categories;
  int? price;
  dynamic? description;
  String? image;
  int? averageRating;
  int? totalRatings;
  RatingsPercentage? ratingsPercentage;

  ChildrenService1(
      {this.id,
      this.categories,
      this.price,
      this.description,
      this.image,
      this.averageRating,
      this.totalRatings,
      this.ratingsPercentage});

  ChildrenService1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categories = json['categories'];
    price = json['price'];
    description = json['description'];
    image = json['image'];
    averageRating = json['average_rating'];
    totalRatings = json['total_ratings'];
    ratingsPercentage = json['ratings_percentage'] != null
        ? new RatingsPercentage.fromJson(json['ratings_percentage'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categories'] = this.categories;
    data['price'] = this.price;
    data['description'] = this.description;
    data['image'] = this.image;
    data['average_rating'] = this.averageRating;
    data['total_ratings'] = this.totalRatings;
    if (this.ratingsPercentage != null) {
      data['ratings_percentage'] = this.ratingsPercentage!.toJson();
    }
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