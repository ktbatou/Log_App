import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/Socialmedia.dart';
import 'package:login_app/form.dart';
import 'package:login_app/signText.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(top: contextHeight * 0.04),
                    child: Text('Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                          color: const Color(0xff6D678E),
                        ))),
                RegisterForm(),
                const SizedBox(
                  height: 30,
                ),
                Text("Sign Up With",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: const Color(0xffB2B2B2))),
                SizedBox(
                  height: contextWidth > contextHeight ? 20 : 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SocialMedia(),
                ),
                SizedBox(
                  height: contextWidth > contextHeight ? 20 : 30,
                ),
                SignText(
                  clickText: "Sign In",
                  questText: "Already havr an account",
                ),
                SizedBox(
                  height: contextWidth > contextHeight ? 20 : 0,
                ),
              ],
            ),
          )),
        ));
  }
}
