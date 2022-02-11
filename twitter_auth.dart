import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_login/twitter_login.dart';

Future<UserCredential> signInWithTwitter() async {
  // Create a TwitterLogin instance
  final twitterLogin = TwitterLogin(
      apiKey: 'b85vPr7mwVymMTu5NNwxsygm2',
      apiSecretKey: 'jLA4NBddDsxsMWVzkAy0C5mp6HF2M7RQkSXq1Cu0zoILZ9sRdJ',
      redirectURI: 'https://login-d39d9.firebaseapp.com/__/auth/handler');

  // Trigger the sign-in flow
  final authResult = await twitterLogin.login();

  // Create a credential from the access token
  final twitterAuthCredential = TwitterAuthProvider.credential(
    accessToken: authResult.authToken!,
    secret: authResult.authTokenSecret!,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance
      .signInWithCredential(twitterAuthCredential);
}
