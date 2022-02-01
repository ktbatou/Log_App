import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<RegisterForm> {
  TextEditingController fullName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double contextWidth = MediaQuery.of(context).size.width;
    double contextHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: contextHeight * 0.06),
              width: contextWidth * 0.75,
              height: contextHeight * 0.05,
              child: TextFormField(
                controller: fullName,
                //   style: TextStyle(color: theme.textTheme),
                //  maxLength: 100,
                //    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                decoration: const InputDecoration(
                  fillColor: Color(0xffE5E5E5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide:
                        BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Color(0xffB2B2B2)),
                  counterStyle: TextStyle(color: Colors.grey),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: contextHeight * 0.03),
              width: contextWidth * 0.75,
              height: contextHeight * 0.05,
              child: TextFormField(
                controller: fullName,
                //   style: TextStyle(color: theme.textTheme),
                //   maxLength: 100,
                //    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                decoration: const InputDecoration(
                  fillColor: Color(0xffE5E5E5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide:
                        BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: Color(0xffB2B2B2)),
                  counterStyle: TextStyle(color: Colors.grey),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: contextHeight * 0.03),
              width: contextWidth * 0.75,
              height: contextHeight * 0.05,
              child: TextFormField(
                controller: fullName,
                //   style: TextStyle(color: theme.textTheme),
                // maxLength: 100,
                //    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                decoration: const InputDecoration(
                  fillColor: Color(0xffE5E5E5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide:
                        BorderSide(color: Color(0xffE5E5E5), width: 1.0),
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
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: contextHeight * 0.03),
              width: contextWidth * 0.75,
              height: contextHeight * 0.05,
              child: TextFormField(
                controller: fullName,
                //   style: TextStyle(color: theme.textTheme),
                //  maxLength: 100,
                //    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                decoration: const InputDecoration(
                  fillColor: Color(0xffE5E5E5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide:
                        BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xffB2B2B2)),
                  counterStyle: TextStyle(color: Colors.grey),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: contextHeight * 0.06),
                width: contextWidth * 0.75,
                height: contextHeight * 0.05,
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
                      shadowColor:
                          MaterialStateProperty.all<Color>(Color(0xff6D678E)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff6D678E),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  child: Text('Sign Up',
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 18)),
                  onPressed: () {
                    /* if (_formKey.currentState!.validate()) {
                        senEmail(
                            email: Email.text,
                            name: fullName.text,
                            msg: Message.text);
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              backgroundColor: Colors.lightGreen,
                              content:
                                  Text('The message was sent successfully')),
                        );
                        Navigator.of(context).pushNamed('/');
                      }*/
                  },
                ))
          ],
        ),
      ),
    );
  }
}
