class SmoothPrice {
  final String uid;
  final String amount;
  final String forWhat; // Mission or Event or any
  final String forWhatUid; // Mission UID or Mission UID

  SmoothPrice({
    required this.uid,
    required this.amount,
    required this.forWhat,
    required this.forWhatUid,
  });

  factory SmoothPrice.fromJson(json) {
    return SmoothPrice(
      uid: json['soldID'],
      amount: json['amount'],
      forWhat: json['forWhat'],
      forWhatUid: json['forWhatUid'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'soldId': uid,
      'amount': amount,
      'forWhat': forWhat,
      'forWhatUid': forWhatUid,
    };
  }
}
