import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testedrawer/models/app_model.dart';
import 'package:testedrawer/pages/page_drawer.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    AppModel model = Provider.of<AppModel>(context, listen: true);

    if (model.teste.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Sem valor na stream'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.mouse),
          onPressed: () => floatClick(),
        ),
      );
    }

    // Imprime valor do stream
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(model.teste),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mouse),
        onPressed: () => floatClick(),
      ),
    );
  }
  
  floatClick() {
    Provider.of<AppModel>(context, listen: false).setTeste("aaaaaaa");
  }
}
