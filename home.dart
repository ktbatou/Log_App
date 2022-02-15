import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/login.dart';
import 'package:login_app/signIn-register.dart';

class Home extends StatefulWidget {
  String userName;
  Home({required this.userName});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: contextWidth * 0.45),
                  child: Text(
                    "Hello,",
                    style: GoogleFonts.poppins(
                        fontSize: 48,
                        color: const Color(0xff6D678E),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: contextWidth * 0.35),
                  child: Text(
                    widget.userName,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: const Color(0xff6D678E),
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Container(
              width: contextWidth * 0.7,
              child: Text(
                "“Inspiration comes from within yourself. One has to be positive. When you’re positive, good things happen.” —Deep Roy",
                style: GoogleFonts.poppins(fontSize: 24, color: Colors.grey),
              ),
            ),
            Container(
                width: contextWidth > contextheight
                    ? contextWidth * 0.35
                    : contextWidth * 0.55,
                height: contextWidth > contextheight
                    ? contextheight * 0.09
                    : contextheight * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xff6D678E),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      // padding: const EdgeInsets.all(16.0),
                      primary: const Color(0xff6D678E),
                      textStyle: GoogleFonts.roboto(fontSize: 16),
                    ),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: const Text(
                      "Sign Out",
                    ),
                  ),
                ))
          ])),
    );
  }
}
