import 'package:designs_flutter_app/designs/designs.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Designs App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home_screen',
        routes: {
          'basic_design': (_) => ScrollDesign(),
          'home_screen': (_) => HomeScreen(),
        });
  }
}
