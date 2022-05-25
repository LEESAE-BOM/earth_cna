import 'package:flutter/material.dart';
import 'package:earth_cna/screen/intro_slider_screen.dart';
import 'package:earth_cna/tip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // // Show splash screen while waiting for app resources to load:
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return MaterialApp(home: Splash());
        // } else {
        //   // Loading is done, return the app:
          return MaterialApp(
            home: const AnimatedIntroductionSlider(),
          );
        }
    );
  }
}
