import 'package:flutter/material.dart';

class productInquiry extends StatefulWidget {
  @override
  _productInquiry createState() => _productInquiry();
}

class _productInquiry extends State<productInquiry>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
            "제품문의", style: TextStyle(fontSize: 20, color: Colors.black26)
        )
    );
  }
}