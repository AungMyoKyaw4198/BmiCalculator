import 'package:bmicalculator_project/ageState_provider.dart';
import 'package:bmicalculator_project/genderState_provider.dart';
import 'package:bmicalculator_project/heightState_provider.dart';
import 'package:bmicalculator_project/input_page.dart';
import 'package:bmicalculator_project/result_page.dart';
import 'package:bmicalculator_project/weightState_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
         primaryColor: Color(0xFF0A0D22),
        // scaffoldBackgroundColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => GenderStateProvider(),),
        ChangeNotifierProvider(create: (_) => HeightStateProvider(),),
        ChangeNotifierProvider(create: (_) => WeightStateProvider(),),
        ChangeNotifierProvider(create: (_) => AgeStateProvider(),),
      ],
        child: Home(),
      ),
      // initialRoute: '/',
      routes: {
        '/home': (context) => Home(),
        '/result': (context) => ResultPage(),
      }, 
    );
  }
}

