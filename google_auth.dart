import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<dynamic> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  User? user;
  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication.catchError((onError) => print(onError));

  // Create a new credential
  if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    final userr = await FirebaseAuth.instance.signInWithCredential(credential);
    return userr.user!.displayName;
  }
  return user;
  // Once signed in, return the UserCredential
}
