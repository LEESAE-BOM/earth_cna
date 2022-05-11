import 'package:earth_cna/tip.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:earth_cna/introduction_pages/introduction_pages.dart';

class AnimatedIntroductionSlider extends StatelessWidget {
  const AnimatedIntroductionSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'introduction Slider', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.of(context).pushReplacementNamed('/tips');
            //다음 화면 넣을 공간
          },
          pageButtonTextStyles:const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter

      ), //Builder
      routes: <String,WidgetBuilder> {
        '/tips':(BuildContext context)=>new Tips()		//팁 페이지로 넘어가기!
      },
    ); //Material App
  }
}