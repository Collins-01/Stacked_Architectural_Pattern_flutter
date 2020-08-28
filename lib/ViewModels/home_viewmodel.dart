import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int _counter = 0;
  Color _color1 = Colors.red;
  Color _color2 = Colors.green;
  Color get color1 => _color1;
  Color get color2 => _color2;

  String _title = "Not Pressed Yet";

  String get title => _title;
  int get counter => _counter;
  void updateCounter() {
    print("The Counter was Updated.....");
    _title = "You Have pressed this button  $counter times......";
    _counter++;
    notifyListeners();
  }

  box1() {
    if (_color1 == Colors.red) {
      Timer(Duration(microseconds: 100), () {
        _color1 = Colors.blue;
        notifyListeners();
      });
    } else {
      Timer(Duration(microseconds: 100), () {
        _color1 = Colors.red;
        notifyListeners();
      });
    }
  }

  box2() {
    if (_color2 == Colors.green) {
      Timer(Duration(microseconds: 100), () {
        _color2 = Colors.purple;
        notifyListeners();
      });
    } else {
      Timer(Duration(microseconds: 100), () {
        _color2 = Colors.green;
        notifyListeners();
      });
    }
  }
}
