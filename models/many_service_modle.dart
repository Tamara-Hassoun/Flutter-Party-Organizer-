class manyServiceModel {
  bool? status;
  List<Data>? data;
  String? message;

  manyServiceModel({this.status, this.data, this.message});

  manyServiceModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class Data {
  int? id;
  String? categories;
  String? image;
  List<Children1>? children;

  Data({this.id, this.categories, this.image, this.children});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categories = json['categories'];
    image = json['image'];
    if (json['children'] != null) {
      children = <Children1>[];
      json['children'].forEach((v) {
        children!.add(new Children1.fromJson(v));
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

class Children1 {
  int? id;
  String? categories;
  int? price;
  dynamic? description;
  String? image;

  Children1(
      {this.id, this.categories, this.price, this.description, this.image});

  Children1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categories = json['categories'];
    price = json['price'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categories'] = this.categories;
    data['price'] = this.price;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}