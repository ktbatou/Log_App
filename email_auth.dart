import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<String> Registeration(String email, String pwd) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: pwd);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      return ('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      return ('The account already exists for this email.');
    }
  } catch (e) {
    return (e.toString());
  }
  return ("done");
}
