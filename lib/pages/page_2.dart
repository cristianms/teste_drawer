import 'package:flutter/material.dart';
import 'package:testedrawer/pages/page_drawer.dart';

class Page2 extends PageDrawer {
  @override
  String get titulo => 'Page 2';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'ITEM 2',
          ),
        ],
      ),
    );
  }
}
