import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/loginForm.dart';
import 'package:login_app/signText.dart';

import 'Socialmedia.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;

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
                    child: Text('Sign In',
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                          color: const Color(0xff6D678E),
                        ))),
                LoginForm(),
                const SizedBox(
                  height: 30,
                ),
                Text("Sign In With",
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
                  clickText: "Sign Up",
                  questText: "You don't have an account?",
                ),
                SizedBox(
                  height: contextWidth > contextHeight ? 20 : 0,
                ),
              ],
            ),
          )),
        ));
    ;
  }
}
