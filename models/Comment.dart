class Comment {
  List<Post>? posts;

  Comment({this.posts});

  Comment.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      posts = <Post>[];
      json['posts'].forEach((v) {
        posts!.add(new Post.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.posts != null) {
      data['posts'] = this.posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Post {
  String? user;
  String? comment;
  String? createdAt;
int?id;
  Post({this.user, this.comment, this.createdAt,this.id});

  Post.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    id=json['id'];
    comment = json['comment'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
        data['id'] = this.id;

    data['comment'] = this.comment;
    data['created_at'] = this.createdAt;
    return data;
  }
}