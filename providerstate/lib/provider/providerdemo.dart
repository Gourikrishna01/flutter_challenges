import 'package:flutter/material.dart';

class Providerdemo with ChangeNotifier {
  String test1 = "Flutter App";
  void changeValue(String value) {
    test1 = value;
    notifyListeners();
  }

  Widget widget() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
    );
  }
}
