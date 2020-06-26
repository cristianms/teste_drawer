import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testedrawer/pages/home_drawer.dart';
import 'package:testedrawer/pages/home_tab_bar.dart';
import 'package:testedrawer/pages/page_1.dart';
import 'package:testedrawer/pages/page_2.dart';
import 'package:testedrawer/pages/page_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de Menus"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              child: Text("Modelo 1"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HomeDrawer()
                ));
              },
            ),
            OutlineButton(
              child: Text("Modelo 2"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeTabBar()
                ));
              },
            ),
          ],
        ),
      )
    );
  }
}
