import 'package:flutter/material.dart';
import 'package:earth_cna/menu.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:earth_cna/util/my_card.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(title: 'Flutter Demo Home Page'),
    );
  }
}

class Main extends StatefulWidget {
  Main({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('어스(us, earth)'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(44, 62, 80, 1),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      endDrawer: MenuDrawer(),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                width: 400,
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    Image.asset('assets/images/1.jpg'),
                    Image.asset('assets/images/2.jpg'),
                    Image.asset('assets/images/3.png'),
                  ],
                ),
              ),
            ),
            Center(
              child:
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade600,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 180,
                    height:145,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('어스와의 대화',
                            style:TextStyle(
                                fontSize: 22
                            )
                        ),
                        Icon(CupertinoIcons.chat_bubble_2,size: 50,)
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height:145,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                    child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('환경 지킴이(TIP)',
                            style:TextStyle(
                                fontSize: 22
                            )
                        ),
                        Icon(CupertinoIcons.arrow_3_trianglepath,size: 50,)
                      ],
                    ),
                    )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/save.png',width: 60,height: 50,),
                        Text('어스에 오신 것을 환영해요 \n 어스는 딥러닝 기반의 AI 챗봇이에요',
                            style:TextStyle(
                            fontSize: 15
                        )
                        )
                      ],
                    ),
                    SizedBox(height:10,),
                    Text('us를 위해, earth를 위해 함께 노력해볼까요? :)',
                        style:TextStyle(
                            fontSize: 17
                        )
                    )
                ],
              ),
            )
        ),
          ]
      ),
    )
    );
  }
}
