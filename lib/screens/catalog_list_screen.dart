import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

bool isChecked = false;

class catalogList extends StatefulWidget {
  const catalogList({Key? key}) : super(key: key);
  @override
  State<catalogList> createState() => _catalogList();
}

class _catalogList extends State<catalogList> {
  final TextEditingController _controller = TextEditingController();
  void _clearTextField() {
    // Clear everything in the text field
    _controller.clear();
    // Call setState to update the UI
    setState(() {});
  }

  void readdata(String code){ //// 여기 해야됨!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    final usercol=FirebaseFirestore.instance.collection("users").doc("$code");
    usercol.get().then((value) => {
      print(value.data())
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '상품 목록',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.navigate_before),
          color: Color(0xffffa511),
          iconSize: 30,
          onPressed: () {
            //Navigator.pop(context);
            print('BackPage');
          }, // 페이지 연결
        ),
        actions: <Widget>[
          Expanded(
            child: Container(
              height: 50,
              child: TextField(
                controller: _controller,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color(0xffa6a6a6),
                    ),
                  ),
                  labelText: '내용을 입력해주세요.',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    onPressed: _clearTextField,
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              padding: const EdgeInsets.only(right: 5, left:53, top:10, bottom:7),
            ),
          ),
          IconButton(
            icon: Icon(Icons.room), // 아이콘 생성
            color: Color(0xffffa511),
            onPressed: () {
              // 아이콘 버튼 실행
              print('Button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart), // 장바구니 아이콘 생성
            color: Color(0xffffa511),
            onPressed: () {
              // 아이콘 버튼 실행
              print('Shopping cart button is clicked');
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 37,
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 14,
                  margin: const EdgeInsets.only(left: 3, top:3.5),
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            if (value != null) isChecked = value;
                          });
                        }),
                    Text(
                      '정기구매',
                      style: TextStyle(
                        fontSize: 14,
                        height: 0.95,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
          Container(
            height: 1.5,
            color: Color(0xffb4b7bb),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(5, 12, 35, 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 110,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/chickenBreast.jpg',
                              width: 100, height: 100),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: 202 * (MediaQuery.of(context).size.width/360),
                              child: Text(
                                '하림 IFF 닭가슴살(냉동), 2kg, 1개',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 202 * (MediaQuery.of(context).size.width/360),
                              child: Text(
                                '16,900원',
                                style: TextStyle(fontSize: 13, height: 1.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(5, 12, 35, 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Wrap(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 110,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/tomato.jpg',
                              width: 100, height: 100),
                        ),
                        Column(
                          //width: 240,
                          children: <Widget>[
                            Container(
                              width: 202 * (MediaQuery.of(context).size.width/360),
                              //margin: const EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                '충남세도 GAP 인증 대추방울토마토, 1kg, 1박스',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 202 * (MediaQuery.of(context).size.width/360),
                              child: Text(
                                '11,800원',
                                style: TextStyle(fontSize: 13, height: 1.5),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: Color(0xfff2f2f2),
            ),
          ),
        ],
      ),
    );
  }
}
