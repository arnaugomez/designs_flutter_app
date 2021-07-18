import 'package:flutter/material.dart';

const backgroundColor = 0xff30bad6;

class ScrollDesign extends StatelessWidget {
  const ScrollDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.5, 0.5],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff5ee8c5),
                Color(backgroundColor),
              ])),
      child: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), StatusInfo()],
    );
  }
}

class StatusInfo extends StatelessWidget {
  const StatusInfo({
    Key? key,
  }) : super(key: key);

  static const textStyle =
      TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text("11º", style: textStyle),
          Text("Miércoles", style: textStyle),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(backgroundColor),
      child: Image(
        image: AssetImage('assets/images/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(backgroundColor),
        child: Center(
            child: ElevatedButton(
          child: Text("Welcome"),
          onPressed: () {},
        )));
  }
}
