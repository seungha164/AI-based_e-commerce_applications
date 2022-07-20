import 'package:baljachwi_project/screens/catalog_list_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:baljachwi_project/screens/Home/home.dart';
import 'package:baljachwi_project/screens/Home/test.dart';
// firebase core 플러그인 및 생성한 구서파일 가져오기
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  /*
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
