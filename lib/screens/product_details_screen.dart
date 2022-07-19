import 'package:flutter/material.dart';

class productDetails extends StatefulWidget {
  const productDetails({Key? key}) : super(key: key);
  @override
  _productDetails createState() => _productDetails();
}

class _productDetails extends State<productDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton( // 뒤로가기 버튼
          icon: Icon(Icons.navigate_before),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          }, // 페이지 연결
        ),
        actions: <Widget>[
          IconButton( // 위치 설정 버튼
            icon: Icon(Icons.room),
            color: Color(0xffffa511),
            onPressed: () { // 아이콘 버튼 실행
              print('Button is clicked');
            },
          ),
          IconButton( // 장바구니 버튼
            icon: Icon(Icons.shopping_cart),
            color: Color(0xffffa511),
            onPressed: () { // 아이콘 버튼 실행
              print('Shopping cart button is clicked');
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: dividingLine(),
          ),

          Expanded(
              child: pageOfMiddle(),
          ),

          Container(
              child: pageOfBottom(),
          ),
        ],
      ),
    );
  }

  Widget dividingLine() {
    return Container(
      height: 2,
      color: Color(0xffc0c0c0),
    );
  }

  Widget pageOfMiddle() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          child: Image.asset('images/scrollTest.png'),
        )
      ],
    );
  }

  Widget pageOfBottom() {
    return Container(
      child: Image.asset('images/underbarTest.png'),
    );
  }
}