class SComment {
  final String uid;
  final String commentFor;//Object for this comment [Mission / Event or any other one]
  final String forUid;
  final String comment;

  SComment({required this.uid, required this.commentFor, required this.forUid, required this.comment});

  factory SComment.fromJson(json) {
    return SComment(
      uid: json['uid'] ?? "",
      commentFor: json['commentFor'] ?? "",
      forUid: json['forUid'] ?? "",
      comment: json['comment'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'commentFor': commentFor,
      'forUid': forUid,
      'comment': comment,
    };
  }
}
