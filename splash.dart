import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/register.dart';
import 'package:login_app/signIn-register.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextheight = MediaQuery.of(context).size.height;
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment(0.9, -0.5),
          end: Alignment(0, 0.99),
          colors: <Color>[Color(0xff6D678E), Color(0xffF6B5CC)],
          //
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Text(
                    "Welcome",
                    style: GoogleFonts.poppins(
                        fontSize: 42,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  )),
                  Container(
                      height: contextheight * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          button(msg: "Register", page: Register()),
                          SizedBox(
                            height: 20,
                          ),
                          button(msg: "Sign In", page: Register()),
                        ],
                      ))
                ],
              ),
            )));
  }
}
