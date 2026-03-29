class commentsBypostModel {
  List<PostComment>? posts;

  commentsBypostModel({this.posts});

  commentsBypostModel.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      posts = <PostComment>[];
      json['posts'].forEach((v) {
        posts!.add(new PostComment.fromJson(v));
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

class PostComment {
  String? user;
  int? commentId;
  String? comment;
  String? createdAt;

  PostComment({this.user, this.commentId, this.comment, this.createdAt});

  PostComment.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    commentId = json['comment_id'];
    comment = json['comment'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['comment_id'] = this.commentId;
    data['comment'] = this.comment;
    data['created_at'] = this.createdAt;
    return data;
  }
}
