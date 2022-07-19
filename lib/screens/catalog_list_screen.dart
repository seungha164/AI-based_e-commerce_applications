import 'package:flutter/material.dart';

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
              margin: const EdgeInsets.only(right: 20, left:65, top:10, bottom:5),
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
            height: 2,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            height: 47,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 0, left: 8),
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
                        fontSize: 15,
                        height: 1.12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
          Container(
            height: 2,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 130,
                          margin: const EdgeInsets.only(left: 35, right: 35),
                          alignment: Alignment.centerLeft,
                          child: Image.asset('images/chickenBreast.jpg',
                              width: 100, height: 100),
                        ),
                        Column(
                          //width: 240,
                          children: <Widget>[
                            Container(
                              width: 400,
                              child: Text(
                                '하림 IFF 닭가슴살(냉동), 2kg, 1개',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 400,
                              child: Text(
                                '16,900원',
                                style: TextStyle(fontSize: 16, height: 2),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 130,
                          margin: const EdgeInsets.only(left: 35, right: 35),
                          alignment: Alignment.centerLeft,
                          child: Image.asset('images/tomato.jpg',
                              width: 100, height: 100),
                        ),
                        Column(
                          //width: 240,
                          children: <Widget>[
                            Container(
                              width: 400,
                              child: Text(
                                '충남세도 GAP 인증 대추방울토마토, 1kg, 1박스',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 400,
                              child: Text(
                                '11,800원',
                                style: TextStyle(fontSize: 16, height: 2),
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
