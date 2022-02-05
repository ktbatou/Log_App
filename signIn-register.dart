import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/register.dart';

class button extends StatefulWidget {
  String msg;
  Widget page;
  button({required this.msg, required this.page});
  @override
  _buttonsState createState() => _buttonsState();
}

class _buttonsState extends State<button> {
  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextheight = MediaQuery.of(context).size.height;
    return Container(
        width: contextWidth > contextheight
            ? contextWidth * 0.55
            : contextWidth * 0.7,
        height: contextWidth > contextheight
            ? contextheight * 0.1
            : contextheight * 0.055,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextButton(
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: GoogleFonts.roboto(fontSize: 21),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => widget.page),
                (Route<dynamic> route) => false,
              );
            },
            child: Text(
              widget.msg,
            ),
          ),
        ));
  }
}
