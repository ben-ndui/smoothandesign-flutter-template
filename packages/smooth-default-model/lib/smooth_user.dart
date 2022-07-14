class SmoothUser {
  final String uid;
  final String name;
  final String email;
  final String phoneNumber;
  final String pictureUrl;

  SmoothUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.pictureUrl,
  });

  factory SmoothUser.fromJson(json) {
    return SmoothUser(
      uid: json['uid'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      pictureUrl: json['pictureUrl'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'picturlUrl': pictureUrl,
    };
  }
}
