class SmoothSettingsModel {
  final String uid;//userUid
  final bool isAdmin;

  SmoothSettingsModel({required this.uid, required this.isAdmin});

  factory SmoothSettingsModel.fromJson(json) {
    return SmoothSettingsModel(
      uid: json['userUid'],
      isAdmin: json['isAdmin'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'userUid': uid,
      'isAdmin': isAdmin,
    };
  }
}
