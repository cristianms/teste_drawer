
import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier{

  String teste = '';

  void setTeste(String str) {
    teste = str;
    notifyListeners();
  }
}