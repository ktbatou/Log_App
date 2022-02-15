import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:twitter_login/twitter_login.dart';

Future<dynamic> signInWithTwitter() async {
  UserCredential? user;
  // Create a TwitterLogin instance
  print("${dotenv.env['TWITTER_CALLBACK_URL']}");
  final twitterLogin = TwitterLogin(
    apiKey: "1RUGBkE0akXmwhsqkdyiA8LjH",
    apiSecretKey: "6V5zuklMcmG10Rao5QJKXdrPWn2jUkAzel3RpWcyALzYF2VrUV",
    redirectURI: "ktbato://",
  );

  // Trigger the sign-in flow
  final authResult = await twitterLogin.login();
  if (authResult.authToken != null && authResult.authTokenSecret != null) {
    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: authResult.authToken!,
      secret: authResult.authTokenSecret!,
    );
    return await FirebaseAuth.instance
        .signInWithCredential(twitterAuthCredential);
  }
  // Once signed in, return the UserCredential
  return user;
}
