import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/login.dart';
import 'package:login_app/register.dart';

class SignText extends StatefulWidget {
  String clickText;
  String questText;
  SignText({required this.clickText, required this.questText});
  @override
  _SignTextState createState() => _SignTextState();
}

class _SignTextState extends State<SignText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.questText,
              style: GoogleFonts.poppins(
                  fontSize: 12, color: const Color(0xffB2B2B2))),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              if (widget.clickText == "Sign Up") {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                  (Route<dynamic> route) => false,
                );
              } else {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (Route<dynamic> route) => false,
                );
              }
            },
            child: Text(widget.clickText,
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: const Color(0xff6D678E),
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}
