class SmoothUserComment {
  final String uid;//userUID
  final String commentUid; //commentUID

  SmoothUserComment({
    required this.uid,
    required this.commentUid,
  });

  factory SmoothUserComment.fromJson(json) {
    return SmoothUserComment(
      uid: json['userUid'],
      commentUid: json['commentUid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userUid': uid,
      'commentUid': commentUid,
    };
  }
}
