
import 'package:smoothTheme/enum/smooth_enum.dart';

class SmoothDocument {
  String uid;
  String userUid;
  String name;
  String url;
  SmoothType type;

  SmoothDocument({
    required this.uid,
    required this.userUid,
    required this.name,
    required this.url,
    required this.type,
  });

  factory SmoothDocument.fromJson(json) {
    return SmoothDocument(
      uid: json['docID'],
      userUid: json['userUid'],
      name: json['name'],
      url: json['url'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'docID': uid,
      'userUid': userUid,
      'name': name,
      'url': url,
      'type': type.name,
    };
  }
}
