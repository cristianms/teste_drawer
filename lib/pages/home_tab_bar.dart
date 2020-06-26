import 'package:flutter/material.dart';
import 'package:testedrawer/pages/page_1.dart';
import 'package:testedrawer/pages/page_2.dart';
import 'package:testedrawer/pages/page_home.dart';

class HomeTabBar extends StatelessWidget {

  final pages = [PageHome(), Page1(), Page2()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Menu TabBar"),
            bottom: TabBar(tabs: [
              Tab(text: pages[0].titulo),
              Tab(text: pages[1].titulo),
              Tab(text: pages[2].titulo),
            ]),
          ),
          body: TabBarView(children: pages),
        ),
    );
  }
}