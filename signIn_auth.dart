import 'package:firebase_auth/firebase_auth.dart';

Future<String> LoginAuth(String email, String pwd) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: pwd,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      return ('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      return ('Wrong password provided for that user.');
    }
  }
  return ("done");
}
