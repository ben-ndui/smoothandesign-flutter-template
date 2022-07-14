class SmoothAvis {
  final String? uid;
  final double nbStar;
  final String commentUid;
  final String forWhat; // Mission, Event or any...
  final String forWhatUid; //Mission->UID, Event->UID or any

  SmoothAvis({
    required this.uid,
    required this.nbStar,
    required this.commentUid,
    required this.forWhat,
    required this.forWhatUid,
  });

  factory SmoothAvis.fromJson(json) {
    return SmoothAvis(
      uid: json['uid'],
      nbStar: json['nbStar'] ?? "",
      commentUid: json['commentUid'] ?? "",
      forWhatUid: json['forWhatUid'],
      forWhat: json['forWhat'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'nbStar': nbStar,
      'commentUid': commentUid,
      'forWhat': forWhat,
      'forWhatUid': forWhatUid,
    };
  }
}
