import 'package:flutter/material.dart';
import 'package:earth_cna/chatbot.dart';
import 'package:earth_cna/faq.dart';
import 'package:earth_cna/notice.dart';
import 'package:earth_cna/start.dart';
import 'package:earth_cna/tip.dart';
import 'package:flutter/cupertino.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      color: Colors.white,
      child: Menu_Drawer(),
    );
  }
}

class Menu_Drawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Menu_Drawer();
}

class _Menu_Drawer extends State<Menu_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.smiley),
        title: Text('어스에 오신 것을 환영해요:)',
            style:TextStyle(
                fontSize: 12
            )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(44, 62, 80, 1),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
                  ListTile(
                    title: Text('어스와의 대화'),
                     //  onTap: () {
                     //  Navigator.of(context).push(
    //   MaterialPageRoute(builder: (context) => chatbot()));
                    //              },
                  ),
                  ListTile(
                    title: Text('TIP'),
    //onTap: () {
    //                Navigator.of(context).push(MaterialPageRoute(
    //                    builder: (context) => tip()));
                    //              },
                  ),
                  ListTile(
                    title: Text('FAQ'),
    //onTap: () {
    //                Navigator.of(context).push(MaterialPageRoute(
    //                    builder: (context) => faq()));
                    //              },
                  ),
                  ListTile(
                    title: Text('공지사항'),
    //onTap: () {
    //                Navigator.of(context).push(MaterialPageRoute(
    //                    builder: (context) => notice()));
                    //              },
                  )
                ],
              )
            ],
          ),
    );
  }
}