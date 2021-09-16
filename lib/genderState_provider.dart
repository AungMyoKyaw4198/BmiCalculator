import 'package:flutter/cupertino.dart';

class GenderStateProvider extends ChangeNotifier{
  int currentGender = 0;
  final activeCardColor = Color(0xFFFFFFFF);
  final inactiveCardColor = Color(0xFF8D8E98);
  Color maleCardColor = Color(0xFF8D8E98);
  Color femaleCardColor =Color(0xFF8D8E98);

  int get getGendervalue=> currentGender;
  Color get getMaleCardColor=> maleCardColor;
  Color get getFemaleCardColor=> femaleCardColor;

  void updateColor(int gender){
    currentGender = gender;
    if(gender ==1){
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else{
      maleCardColor = inactiveCardColor;
      femaleCardColor = activeCardColor;
    }
    notifyListeners();
  }

}