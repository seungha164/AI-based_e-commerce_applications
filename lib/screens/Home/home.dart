import 'package:flutter/material.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
final List<String> items = [
  '~10,000',
  '~30,000',
  '~50,000',
  '~100,000',
  '무제한',
];
String? selectedValue;
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TabBar(
              tabs: [
                Container(
                  height: 35,
                  alignment: Alignment.center,
                  child: const Text('자취 추천')
                ),
                Container(
                  height: 35,
                  alignment: Alignment.center,
                  child: const Text('쇼핑')
                ),
                Container(
                  height: 35,
                  alignment: Alignment.center,
                  child: const Text('mate')
                ),
                Container(
                  height: 35,
                  alignment: Alignment.center,
                  child:  const Text('레시피')
                )
              ],
              indicator: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xffffa511),width: 3))
              ),
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              labelColor: Color(0xffffa511),
              unselectedLabelColor: Colors.grey,
              controller: _tabController,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: const Center(
                    child: Text('자취 추천'),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text('쇼핑'),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text('MATE'),
                  ),
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0,20, 0,0),
                      child: Column(
                          children: [
                            Container(
                              height: 200.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('실시간 인기 레시피',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Divider(thickness: 0.5,color: Colors.white),
                                  Container(
                                      height: 150,
                                      child:
                                      new Swiper(
                                          itemBuilder: (BuildContext context,int idx){
                                            return new Container(
                                              color: Colors.grey[300],);
                                          },
                                          itemCount: 5,
                                          pagination: new SwiperPagination(),
                                          control: new SwiperControl()
                                      )
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0,30, 0, 100),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('재료 추천',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[850],fontSize: 18)),
                                        Divider(thickness: 3,color: Colors.grey[850]),
                                        Text('필요한 재료를 알려드립니다!',style: TextStyle(color: Colors.grey))
                                      ]
                                    )
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 20,0),
                                        width: 260,
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: '레시피를 입력해주세요.'
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                          onPressed: (){},
                                          child: Text('검색'),
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20.0)
                                              ),
                                              primary: Color(0xffffa511),
                                              onPrimary: Colors.white,
                                            minimumSize: Size(80, 40)
                                          )
                                      )
                                    ]
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('레시피 추천',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[850],fontSize: 18)),
                                  Divider(thickness: 3,color: Colors.grey[850]),
                                  Text('보유중인 재료에 맞는 레시피를 추천해 드립니다!',style: TextStyle(color: Colors.grey)),
                                  Container(
                                      alignment: Alignment.centerRight,
                                      child: CustomDropdownButton2(
                                          hint: '상한',
                                          value: selectedValue,
                                          dropdownItems: items,
                                          onChanged: (value){
                                            setState((){
                                              selectedValue = value;
                                            }) ;
                                          })
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Color(0xffbcbdc2),width: 1)
                                        //border: BorderSide(color: Colors.grey)
                                      )
                                  ),
                                  ElevatedButton(
                                      onPressed: (){},
                                      child: Text('검색'),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        primary: Color(0xffffa511),
                                        onPrimary: Colors.white,
                                        minimumSize: Size(MediaQuery.of(context).size.width, 50)
                                      )
                                  )
                                ],
                              ),
                            )
                          ]
                      )
                  )
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
  
}


