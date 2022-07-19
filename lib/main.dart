import 'package:baljachwi_project/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:baljachwi_project/screens/mypage/mypage_screen.dart';
import 'package:baljachwi_project/screens/catalog_list_screen.dart';
import 'package:baljachwi_project/screens/product_details_screen.dart';
import 'package:baljachwi_project/screens/Home/home.dart';
// firebase
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// 더미 데이터를 만들어준다.
final dummySnapshot = [
  {"name": "Filip", "votes": 15},
  {"name": "Abraham", "votes": 14},
  {"name": "Richard", "votes": 11},
  {"name": "Ike", "votes": 10},
  {"name": "Justin", "votes": 1},
];
void createData(){
  final userCollectionRefs = FirebaseFirestore.instance.collection('users').doc('userkey1');
  userCollectionRefs.set({
    "userName":"test",
    "age":25
  });
}
void readData(){
  final userCollectionRefs = FirebaseFirestore.instance.collection('users').doc('userkey1');
  userCollectionRefs.get().then((value) => {
    print(value.data())
  });
}


void main() async{
  //readData();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      //debugShowCheckedModeBanner: false,
      home:test()
    );
  }

}
