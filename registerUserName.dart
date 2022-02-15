import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

Future<void> addUser(String fullName, String uid) async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  return await users.doc(uid).set({"username": fullName});
}
