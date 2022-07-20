import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
class Test extends StatefulWidget {

  @override
  _Test createState() => new _Test();
}

class _Test extends State<Test> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('d'),
      ),
      body:
          Container(
            width: 500,
            height: 500,
            child: new Swiper(
              itemBuilder: (BuildContext context,int index){
                return new Container(child: Center(child: Text('d'),),);
              },
              itemCount: 3,
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
            ),
          )

    );
  }
}
