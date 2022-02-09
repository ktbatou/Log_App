import 'package:firebase_auth/firebase_auth.dart';

Future<String> resetPassword(String email) async {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  try {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  } on FirebaseAuthException catch (e) {
    return (e.code);
  }
  return ("done");
}
