import 'package:flutter/cupertino.dart';

class HeightStateProvider extends ChangeNotifier{
  double heightVlaue = 0.0;

  double get getHeightValue => heightVlaue;

  onChanged(double value){
    heightVlaue = value;
    notifyListeners();
  }
}