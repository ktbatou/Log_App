import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment
              .bottomLeft, //Alignment(0.5, 0.5), // 10% of the width, so there are ten blinds.
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
                  width: 300,
                  height: 33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // radius of 10
                    border: Border.all(
                      color: Colors.white,
                    ), // green as background color
                  ),
                  child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        "testing",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                  width: 300,
                  height: 33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // radius of 10
                    border: Border.all(
                      color: Colors.white,
                    ), // green as background color
                  ),
                  child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          "testing",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
