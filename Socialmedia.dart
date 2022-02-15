import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/apple_auth.dart';
import 'package:login_app/facebook_auth.dart';
import 'package:login_app/google_auth.dart';
import 'package:login_app/home.dart';
import 'package:login_app/twitter_auth.dart';

class SocialMedia extends StatefulWidget {
  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextHeight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: contextWidth > contextHeight
                ? contextWidth * 0.15
                : contextWidth * 0.17,
            height: contextWidth > contextHeight
                ? contextWidth * 0.07
                : contextWidth * 0.10,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                side: const BorderSide(width: 0.9, color: Color(0xffB2B2B2)),
              ),
              onPressed: () {
                signInWithGoogle().then((value) {
                  if (value != null) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Home(userName: value.toString())),
                      (Route<dynamic> route) => false,
                    );
                  }
                });
              },
              child: Image.asset(
                'assets/images/google.png',
                height: 20,
                width: 20,
              ),
            ),
          ),
          Container(
              width: contextWidth > contextHeight
                  ? contextWidth * 0.15
                  : contextWidth * 0.17,
              height: contextWidth > contextHeight
                  ? contextWidth * 0.07
                  : contextWidth * 0.10,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  side: const BorderSide(width: 0.9, color: Color(0xffB2B2B2)),
                ),
                onPressed: () {
                  signInWithFacebook().then((value) {
                    if (value.user != null) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home(
                                userName: value.user!.displayName.toString())),
                        (Route<dynamic> route) => false,
                      );
                    }
                  });
                  ;
                },
                child: Image.asset(
                  'assets/images/fb.png',
                  height: 20,
                  width: 20,
                ),
              )),
          Container(
            width: contextWidth > contextHeight
                ? contextWidth * 0.15
                : contextWidth * 0.17,
            height: contextWidth > contextHeight
                ? contextWidth * 0.07
                : contextWidth * 0.10,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                side: const BorderSide(width: 0.9, color: Color(0xffB2B2B2)),
              ),
              onPressed: () {
                signInWithTwitter().then((value) {
                  if (value != null) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(
                              userName: value.user!.displayName.toString())),
                      (Route<dynamic> route) => false,
                    );
                  }
                });
              },
              child: Image.asset(
                'assets/images/apple.png',
                height: 20,
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
