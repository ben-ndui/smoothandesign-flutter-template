class SmoothAddress {
  final String uid;
  final String city;
  final String street;
  final String streetNumber;
  final String country;
  final String code;

  SmoothAddress({
    required this.uid,
    required this.street,
    required this.streetNumber,
    required this.city,
    required this.country,
    required this.code,
  });

  factory SmoothAddress.fromJson(json) {
    return SmoothAddress(
      uid: json['uid'],
      street: json['street'],
      streetNumber: json['streetNumber'],
      city: json['city'],
      country: json['country'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'uid': uid,
      'street': street,
      'streetNumber': streetNumber,
      'city': city,
      'country': country,
      'code': code,
    };
  }
}
