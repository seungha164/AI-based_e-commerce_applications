import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class productDescription extends StatefulWidget {
  @override
  _productDescription createState() => _productDescription();
}

class _productDescription extends State<productDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductContent(),
    );
  }
}

Widget ProductContent() {
  return ListView(
    children: <Widget>[
      imageSlider(),
      pageOfTop(),
      boldDividingLine(),
      pageOfMiddle(),
      pageOfBottom(),
    ],
  );
}

// pageOfTop : 상품 요약정보
Widget pageOfTop() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(20),
    alignment: Alignment.centerLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        productSummary(),
      ],
    ),
  );
}

// pageOfMiddle : 상품 상세정보
Widget pageOfMiddle() {
  return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      Container(
        child: Image.asset('images/productDetailsExample.jpg'),
      ),
    ],
  );
}

// pageOfBottom: footer
Widget pageOfBottom() {
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: <Widget>[
          Text(
            '고객센터 1544 - 1234',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          Text(
            '평일 오전 9시 - 오후 6시 운영',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    ),
  );
}

// *** ! 상품 정보는 추후 데이터베이스에서 받아올 예정이며 디자인을 위해 임시로 하드코딩해놓음 ! ***
Widget productSummary() {
  return Container(
    alignment: Alignment.centerLeft,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '[하림] 하림 닭가슴살 110g x 총 20팩 무료배송',
        style: TextStyle(
          fontSize: 23,
          color: Colors.black,
        ),
      ),
      Text(
        '40,000원',
        style: TextStyle(
          fontSize: 27,
          color: Colors.red,
        ),
      ),
      thinDividingLine(),
      Text(
        'CJ 대한통운 | 모레(목) 7/31 도착 예정',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      thinDividingLine(),
      Text(
        '판매자: 주식회사 푸드킹',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ]),
  );
}

Widget imageSlider() {
  List<String> imagePath = [
    "assets/images/chicken1.jpg",
    "assets/images/chicken2.jpg",
    "assets/images/chicken3.jpg"
  ];

  return CarouselSlider(
    options: CarouselOptions(
      height: 400.0, // 슬라이더 높이
      autoPlay: true, // 자동 슬라이딩 활성화
    ),
    items: imagePath.map((url) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width, // 기기 가로 사이즈 받기
            margin: EdgeInsets.symmetric(horizontal: 5.0), // 좌우 여백 설정
            child: ClipRRect(
              // 이미지 슬라이더 위젯
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(url, fit: BoxFit.cover),
            ),
          );
        },
      );
    }).toList(),
  );
}

Widget thinDividingLine() {
  return Column(
    children: [
      SizedBox(
        height: 20.0,
      ),
      Container(
        height: 1,
        color: Colors.black12,
      ),
      SizedBox(
        height: 20.0,
      ),
    ],
  );
}

Widget boldDividingLine() {
  return Column(
    children: [
      Container(
        height: 20,
        color: Color(0xfff7f7f7),
      ),
    ],
  );
}
