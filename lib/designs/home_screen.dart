import 'package:designs_flutter_app/widgets/background.dart';
import 'package:designs_flutter_app/widgets/card_table.dart';
import 'package:designs_flutter_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:designs_flutter_app/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Stack(
        children: [
          HomeScreenBackground(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
