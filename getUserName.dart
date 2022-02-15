import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> getUser(String uid) async {
  String? userName;
  final firestoreInstance = FirebaseFirestore.instance.collection('users');
  await firestoreInstance.doc(uid).get().then((value) {
    userName = value.data()!['username'];
  });

  return userName!;
}
