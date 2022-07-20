import 'package:flutter/material.dart';

class productInformation extends StatefulWidget {
  @override
  _productInformation createState() => _productInformation();
}

class _productInformation extends State<productInformation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
            "상세정보", style: TextStyle(fontSize: 20, color: Colors.black26)
        )
    );
  }
}