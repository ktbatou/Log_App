import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/login.dart';
import 'package:login_app/resetPwd.dart';

class PwdForgoten extends StatefulWidget {
  @override
  _PwdForgotenState createState() => _PwdForgotenState();
}

class _PwdForgotenState extends State<PwdForgoten> {
  TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Center(
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0xffB2B2B2),
                ),
              ),
            )),
        backgroundColor: Colors.white,
        body: Center(
            child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(children: [
                Container(
                    padding: EdgeInsets.only(top: contextHeight * 0.04),
                    child: Text('Reset Password',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color(0xff6D678E),
                        ))),
                Container(
                  padding: EdgeInsets.only(top: contextHeight * 0.05),
                  width: contextWidth * 0.75,
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      fillColor: Color(0xffE5E5E5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide:
                            BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Color(0xffB2B2B2)),
                      counterStyle: TextStyle(color: Colors.grey),
                    ),
                    validator: (String? value) {
                      bool isValid = EmailValidator.validate(value!);
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      } else if (isValid == false) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: contextHeight * 0.03),
                    width: contextWidth * 0.75,
                    height: contextWidth > contextHeight
                        ? contextHeight * 0.09
                        : contextHeight * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff6D678E).withOpacity(0.45),
                            // spreadRadius: 0.1,
                            blurRadius: 4,
                            offset: const Offset(2.5, 6),
                          )
                        ]),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all<Color>(
                              const Color(0xff6D678E)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff6D678E),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      child: Text('Send',
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 18)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          resetPassword(email.text).then((String value) {
                            if (value == "done") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    backgroundColor: Colors.lightGreen,
                                    content: Text('done')),
                              );
                              Navigator.of(context).pushNamed('/');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text(value)));
                            }
                          });
                        }
                      },
                    ))
              ])),
        )));
  }
}
