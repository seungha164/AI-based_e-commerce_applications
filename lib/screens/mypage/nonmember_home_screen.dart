import 'package:flutter/material.dart';
import 'package:baljachwi_project/screens/mypage/nonmember_order_screen.dart';

class nonmemberHome extends StatelessWidget {
  const nonmemberHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.navigate_before),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {}, // 페이지 연결
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/logo/logo.png'), // 나중에 장바구니 로고로 변경
            onPressed: null,
          )
        ],
        backgroundColor: Color(0xffffa511),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 40),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '회원이시면\n로그인 해주세요!',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  width: 400,
                  height: 50,
                  margin: const EdgeInsets.all(30),
                  child: TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                        elevation: 0,
                        primary: Color(0xffffa511),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: BorderSide(
                          color: Colors.black,
                          width: 3,
                        )),
                    child: Text(
                      '로그인 / 회원가입',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            color: Color(0xffffa511),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    '나의 쇼핑',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7f7f7f),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  height: 5,
                  color: Color(0xff7f7f7f),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => nonmemberOrder(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      '비회원 주문 내역',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffa6a6a6),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  height: 1,
                  color: Color(0xffd9d9d9),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
1. 장바구니 로고 바꾸기
2. 뒤로가기 onPressed -> 홈 페이지 연결
3. 로그인/회원가입 페이지 연결
*/