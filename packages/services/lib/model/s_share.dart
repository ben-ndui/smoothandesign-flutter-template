class SShare {
  final String uid; //from userUID
  final String toUid;
  final dynamic data;

  SShare({required this.uid, required this.toUid, this.data});

  factory SShare.fromJson(json) {
    return SShare(
      uid: json['fromUid'],
      toUid: json['toUid'],
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fromUid': uid,
      'toUid': toUid,
      'data': data,
    };
  }
}
