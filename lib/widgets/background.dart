import 'package:flutter/material.dart';

class HomeScreenBackground extends StatelessWidget {
  const HomeScreenBackground({Key? key}) : super(key: key);
  static const boxDecoration = BoxDecoration(
    gradient: LinearGradient(
        colors: [Color(0xff2e305f), Color(0xff202333)],
        begin: Alignment.topCenter,
        stops: [0.1, 0.9],
        end: Alignment.bottomCenter),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: boxDecoration),
      ],
    );
  }
}
