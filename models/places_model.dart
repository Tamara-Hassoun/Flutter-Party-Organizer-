class placesNewModel {
  bool? status;
  List<DataPlaces>? data;
  String? message;

  placesNewModel({this.status, this.data, this.message});

  placesNewModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <DataPlaces>[];
      json['data'].forEach((v) {
        data!.add(new DataPlaces.fromJson(v));
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

class DataPlaces {
  int? id;
  String? categories;
  List<Images>? images;
  List<ChildrenPlaces>? children;

  DataPlaces({this.id, this.categories, this.images, this.children});

  DataPlaces.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categories = json['categories'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    if (json['children'] != null) {
      children = <ChildrenPlaces>[];
      json['children'].forEach((v) {
        children!.add(new ChildrenPlaces.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categories'] = this.categories;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  String? image;

  Images({this.image});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}

class ChildrenPlaces {
  int? id;
  String? name;
  int? price;
  String? phoneNumber;
  String? description;
  String? tele;
  String? addressName;
  String? parentName;
  List<Images>? images;
  Null? averageRating;
  int? totalRatings;
  RatingsPercentagePlace? ratingsPercentage;

  ChildrenPlaces(
      {this.id,
      this.name,
      this.price,
      this.phoneNumber,
      this.description,
      this.tele,
      this.addressName,
      this.parentName,
      this.images,
      this.averageRating,
      this.totalRatings,
      this.ratingsPercentage});

  ChildrenPlaces.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    phoneNumber = json['PhoneNumber'];
    description = json['description'];
    tele = json['tele'];
    addressName = json['address_name'];
    parentName = json['parent_name'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    averageRating = json['average_rating'];
    totalRatings = json['total_ratings'];
    ratingsPercentage = json['ratings_percentage'] != null
        ? new RatingsPercentagePlace.fromJson(json['ratings_percentage'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['PhoneNumber'] = this.phoneNumber;
    data['description'] = this.description;
    data['tele'] = this.tele;
    data['address_name'] = this.addressName;
    data['parent_name'] = this.parentName;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['average_rating'] = this.averageRating;
    data['total_ratings'] = this.totalRatings;
    if (this.ratingsPercentage != null) {
      data['ratings_percentage'] = this.ratingsPercentage!.toJson();
    }
    return data;
  }
}

class RatingsPercentagePlace {
  int? i1;
  int? i2;
  int? i3;
  int? i4;
  int? i5;

  RatingsPercentagePlace({this.i1, this.i2, this.i3, this.i4, this.i5});

  RatingsPercentagePlace.fromJson(Map<String, dynamic> json) {
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