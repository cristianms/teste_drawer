import 'package:flutter/material.dart';
import 'package:testedrawer/pages/page_1.dart';
import 'package:testedrawer/pages/page_2.dart';
import 'package:testedrawer/pages/page_home.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  int _selectedIndex = 0;
  @override
  _HomeBottomNavigationBarState createState() => _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
//  final List pages = [PageHome(), Page1(), Page2()];
  final List<Widget> pages = <Widget>[PageHome(), Page1(), Page2()];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menu TabBar"),
        ),
        body: pages[widget._selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
//              title: Text(pages[0].titulo),
              title: Text('1'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_cafe),
//              title: Text(pages[1].titulo),
              title: Text('2'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.keyboard),
//              title: Text(pages[2].titulo),
              title: Text('3'),
            ),
          ],
          onTap: _onItemTapped
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      widget._selectedIndex = index;
    });
  }
}
