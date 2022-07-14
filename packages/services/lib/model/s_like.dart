class SLike {
  final String uid;
  final String likeFor; //What user like [Mission / Event or any other object we manage]
  final String forUid;
  final String nbStars;
  final String? commentUid;

  SLike({
    required this.uid,
    required this.likeFor,
    required this.forUid,
    required this.nbStars,
    this.commentUid,
  });

  factory SLike.fromJson(json) {
    return SLike(
      uid: json['uid'],
      likeFor: json['likeFor'],
      forUid: json['forUid'],
      nbStars: json['nbStars'],
      commentUid: json['commentUid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'likeFor': likeFor,
      'forUid': forUid,
      'nbStars': nbStars,
      'commentUid': commentUid,
    };
  }
}
