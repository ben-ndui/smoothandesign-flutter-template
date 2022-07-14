class SmoothUserLike {
  final String uid;//userUID
  final String likeUid;//likeUID

  SmoothUserLike({required this.uid, required this.likeUid});

  factory SmoothUserLike.fromJson(json) {
    return SmoothUserLike(
      uid: json['userUid'],
      likeUid: json['likeUid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userUid': uid,
      'likeUid': likeUid,
    };
  }
}
