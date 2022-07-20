import 'package:flutter/material.dart';

class productReview extends StatefulWidget {
  @override
  _productReview createState() => _productReview();
}

class _productReview extends State<productReview>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
            "제품리뷰", style: TextStyle(fontSize: 20, color: Colors.black26)
        )
    );
  }
}