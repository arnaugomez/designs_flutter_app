import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 5),
      child: Table(
        children: [
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
          TableRow(children: [
            _SingleCard(title: "Hello"),
            _SingleCard(title: "Flutter design")
          ]),
        ],
      ),
    );
  }
}

class _SingleCard extends StatelessWidget {
  _SingleCard(
      {Key? key,
      this.iconColor = Colors.blue,
      this.iconData = Icons.person,
      required this.title})
      : super(key: key);
  final Color iconColor;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _CardIcon(iconColor: iconColor, iconData: iconData),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(color: iconColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardIcon extends StatelessWidget {
  const _CardIcon({
    Key? key,
    required this.iconColor,
    required this.iconData,
  }) : super(key: key);

  final Color iconColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: iconColor,
      radius: 30,
      child: Icon(
        iconData,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
