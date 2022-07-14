import 'package:cloud_firestore/cloud_firestore.dart';

class Queries {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final String tableName;
  final String colName;
  final String userUid;
  final dynamic data;

  Queries({
    required this.tableName,
    required this.colName,
    required this.userUid,
    required this.data,
  });

  void update() {
    _firestore.collection(colName).doc(userUid).collection(tableName).doc(data.uid).update(data.toJson());
  }

  void insert() {
    _firestore.collection(colName).doc(userUid).collection(tableName).doc(data.uid).set(data.toJson());
  }

  void delete() {
    _firestore.collection(colName).doc(userUid).collection(tableName).doc(data.uid).delete();
  }
}
