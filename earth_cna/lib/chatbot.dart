// @dart=2.9
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Chatbot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CNA chatbot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'http://10.0.2.2:8080', //코챗 돌아가는 서버 ip:port
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
