import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:earth_cna/strings/introduction_string.dart';

final pages = [
  PageViewModel(
      pageColor: const Color(0xFF88B04B),
      //  bubble: CachedNetworkImage(imageUrl: firstImageIcon),
      iconImageAssetPath: 'assets/images/one.png',
      body: const Text(firstIntrContentText),
      title: const Text(
        firstIntrTitleText,
      ),
      textStyle: const TextStyle(fontFamily: 'text', color: Colors.white),
      mainImage: Image.asset(
        'assets/images/one.png',
        height: 600.0,
        width: 400.0,
        alignment: Alignment.center,
      )),
  PageViewModel(
    pageColor: const Color(0xFFA1CE5D),
    // bubble: CachedNetworkImage(imageUrl: secondImageIcon),
    iconImageAssetPath: 'assets/images/two.png',

    body: const Text(secondIntrContentText),
    title: const Text(secondIntrTitleText),
    mainImage: Image.asset(
      'assets/images/two.png',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    textStyle: const TextStyle(fontFamily: 'text', color: Colors.white),
  ),
  PageViewModel(
    pageColor: const Color(0xFF81C147),
    //bubble: CachedNetworkImage(imageUrl: thirdImageIcon),
    iconImageAssetPath: 'assets/images/three.png',
    body: const Text(thirdIntrContentText),
    title: const Text(thirdIntrTitleTextt),
    mainImage: Image.asset(
      'assets/images/three.png',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    textStyle: const TextStyle(fontFamily: 'text', color: Colors.white12),
  ),
];