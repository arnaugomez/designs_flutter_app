import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Colors.white,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Option 1"),
        BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Option 2"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Usuarios"),
      ],
    );
  }
}
