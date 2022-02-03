import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            width: contextWidth * 0.17,
            height: contextWidth * 0.10,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                side: const BorderSide(width: 0.9, color: Color(0xffB2B2B2)),
              ),
              onPressed: () {},
              child: Image.asset(
                'assets/images/google.png',
                height: 20,
                width: 20,
              ),
            ),
          ),
          Container(
              width: contextWidth * 0.17,
              height: contextWidth * 0.10,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  side: const BorderSide(width: 0.9, color: Color(0xffB2B2B2)),
                ),
                onPressed: () {},
                child: Image.asset(
                  'assets/images/fb.png',
                  height: 20,
                  width: 20,
                ),
              )),
          Container(
            width: contextWidth * 0.17,
            height: contextWidth * 0.10,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                side: const BorderSide(width: 0.9, color: Color(0xffB2B2B2)),
              ),
              onPressed: () {},
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
