class SmoothUserShare {
  final String uid;//userUID
  final String shareUid;

  SmoothUserShare({
    required this.uid,
    required this.shareUid,
  });

  factory SmoothUserShare.fromJson(json) {
    return SmoothUserShare(
      uid: json['userUid'],
      shareUid: json['shareUid'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'userUid': uid,
      'shareUid': shareUid,
    };
  }
}
