import 'package:flutter/cupertino.dart';

class AgeStateProvider extends ChangeNotifier{
  int ageValue = 0;

  int get getAgeValue => ageValue;

  void ageIncrement(){
    ageValue++;
    notifyListeners();
  }

  void ageDecrement(){
    ageValue--;
    notifyListeners();
  }
}