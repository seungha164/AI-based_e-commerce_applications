import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class test extends StatelessWidget {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TextButton(
          onPressed: () {
            firebaseFirestore.collection('users').doc('test').get().then((DocumentSnapshot ds) => {
              print(ds.data())
            });
          },
          child: Text("s")
        )

      )
    );
  }
}
