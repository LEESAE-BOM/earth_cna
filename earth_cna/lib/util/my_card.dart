import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final path;
  final color;

  const MyCard(
      {Key? key,
        required this.path,
        required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 320,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 19,
            spreadRadius: 2,
          )
        ], color: color, borderRadius: BorderRadius.circular(12)),
        child: Image.asset(path) 
      ),
    );
  }
}