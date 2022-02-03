import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<RegisterForm> {
  TextEditingController lastName = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obsecure = true;

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
              padding: EdgeInsets.only(top: contextHeight * 0.05),
              width: contextWidth * 0.75,
              //height: contextHeight * 0.05,
              child: TextFormField(
                controller: firstName,
                //  maxLines: 1,
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
              padding: EdgeInsets.only(top: contextHeight * 0.02),
              width: contextWidth * 0.75,
              // height: contextHeight * 0.08,
              child: TextFormField(
                controller: lastName,
                //maxLines: 1,
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
              padding: EdgeInsets.only(top: contextHeight * 0.02),
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
              padding: EdgeInsets.only(top: contextHeight * 0.02),
              width: contextWidth * 0.75,
              child: TextFormField(
                controller: pwd,
                obscureText: _obsecure,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 10.0),
                  fillColor: const Color(0xffE5E5E5),
                  filled: true,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obsecure = !_obsecure;
                      });
                    },
                    child: Icon(
                      _obsecure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide:
                        BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Color(0xffB2B2B2)),
                  counterStyle: const TextStyle(color: Colors.grey),
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
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            backgroundColor: Colors.lightGreen,
                            content: Text('done')),
                      );
                      Navigator.of(context).pushNamed('/');
                    }
                  },
                ))
          ],
        ),
      ),
    );
  }
}
