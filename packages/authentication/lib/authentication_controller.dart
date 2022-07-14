import 'package:firebase_auth/firebase_auth.dart';

class SmoothAuth {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> onAuthChange() {
    return _auth.authStateChanges();
  }

  /*SmoothUser? userFromFirebase(User? user) {
    return user != null ? SmoothUser(
      uid: user.uid,
      name: user.displayName!,
      email: user.email!,
      phoneNumber: user.phoneNumber!,
      pictureUrl: user.photoURL!,
    ) : null;
  }*/
}
