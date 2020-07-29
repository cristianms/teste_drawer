import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testedrawer/models/app_model.dart';
import 'package:testedrawer/pages/home_bottom_navigation_bar.dart';
import 'package:testedrawer/pages/home_drawer.dart';
import 'package:testedrawer/pages/home_tab_bar.dart';
import 'package:testedrawer/pages/page_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>(
          create: (context) => AppModel(),
        )
//        Provider<AppModel>(
//          create: (context) => AppModel(),
//        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
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
              child: Text("Modelo 1 - Drawer"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HomeDrawer()
                ));
              },
            ),
            OutlineButton(
              child: Text("Modelo 2 - Tab Bar"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeTabBar()
                ));
              },
            ),
            OutlineButton(
              child: Text("Modelo 3 - Bottom Navigation Bar"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeBottomNavigationBar()
                ));
              },
            ),
            OutlineButton(
              child: Text("Teste 4 - Provider"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Page3()
                ));
              },
            ),
          ],
        ),
      )
    );
  }
}
