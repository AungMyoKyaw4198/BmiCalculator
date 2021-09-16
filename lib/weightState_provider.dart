import 'package:flutter/cupertino.dart';

class WeightStateProvider extends ChangeNotifier{
  int weightValue = 0;

  int get getWeightValue => weightValue;

  void weightIncrement(){
    weightValue++;
    notifyListeners();
  }

  void weightDecrement(){
    weightValue--;
    notifyListeners();
  }
}