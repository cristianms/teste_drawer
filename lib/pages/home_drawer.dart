import 'package:flutter/material.dart';
import 'package:testedrawer/pages/page_1.dart';
import 'package:testedrawer/pages/page_2.dart';
import 'package:testedrawer/pages/page_home.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _HomeDrawer(),
    );
  }
}

class _HomeDrawer extends StatefulWidget {
  _HomeDrawer({Key key}) : super(key: key);

  final pages = [PageHome(), Page1(), Page2()];

  int pageShow = 0;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.pages[widget.pageShow].titulo),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(child: null),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Item 1"),
                onTap: () {
                  print("11111111");
                  setState(() {
                    widget.pageShow = 1;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Item 2"),
                onTap: () {
                  print("2222222");
                  setState(() {
                    widget.pageShow = 2;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
//      body: PageHome()
        body: widget.pages[widget.pageShow]);
  }
}
