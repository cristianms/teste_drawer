import 'package:flutter/material.dart';
import 'package:testedrawer/pages/page_drawer.dart';

class PageHome extends PageDrawer {

  @override
  String get titulo => 'Page HOME';

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'HOME',
              ),
            ],
          ),
    );
  }
}
