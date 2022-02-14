import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:twitter_login/twitter_login.dart';

Future<dynamic> signInWithTwitter() async {
  UserCredential? user;
  // Create a TwitterLogin instance
  final twitterLogin = TwitterLogin(
      apiKey: dotenv.env['TWITTER_API_KEY']!,
      apiSecretKey: dotenv.env['TWITTER_API_SECRET_KEY']!,
      redirectURI: dotenv.env['TWITTER_CALLBACK_URL']!);

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
