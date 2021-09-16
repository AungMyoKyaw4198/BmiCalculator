import 'package:bmicalculator_project/ageState_provider.dart';
import 'package:bmicalculator_project/calculator_brain.dart';
import 'package:bmicalculator_project/genderState_provider.dart';
import 'package:bmicalculator_project/heightState_provider.dart';
import 'package:bmicalculator_project/result_page.dart';
import 'package:bmicalculator_project/weightState_provider.dart';
import 'package:bmicalculator_project/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   centerTitle: true,
      //   title: Text('BMI CALCULATOR'),
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        print('Male');
                        context.read<GenderStateProvider>().updateColor(1);
                      },
                      child: Consumer<GenderStateProvider>(
                        builder: (context,genderState,child){
                          return smallContainer(context,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.mars,
                                color: context.watch<GenderStateProvider>().getMaleCardColor,
                                size: 80,),
                              SizedBox(height: 15,),
                              Text(
                                'MALE',
                                style: TextStyle(color: context.watch<GenderStateProvider>().getMaleCardColor,fontSize: 18),
                              )
                            ],
                          )
                        );
                        }
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('Femal');
                        context.read<GenderStateProvider>().updateColor(2);
                      },
                      child: Consumer<GenderStateProvider>(
                        builder: (context,genderState,child){
                          return smallContainer(context,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.venus,
                                color: context.watch<GenderStateProvider>().getFemaleCardColor,
                                size: 80,),
                              SizedBox(height: 15,),
                              Text(
                                'FEMALE',
                                style: TextStyle(color: context.watch<GenderStateProvider>().getFemaleCardColor,fontSize: 18),
                              )
                            ],
                          )
                        );
                        }
                        
                      ),
                    ),
                  ],),
              ),
              bigContainer(context,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  Text('HEIGHT',style: TextStyle(color: Color(0xFF8D8E98),fontSize: 18)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[ 
                      Text('${context.watch<HeightStateProvider>().getHeightValue.toInt()}',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),
                      Padding(padding: EdgeInsets.only(bottom: 4),child: Text(' cm',style: TextStyle(color: Color(0xFF8D8E98),fontSize: 18),)),
                      ],
                  ),
                  Consumer<HeightStateProvider>(
                      builder: (context,genderState,child){
                        return SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xFFEB1555),
                            activeTrackColor: Color(0xFFFFFFFF),
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                            overlayColor: Color(0x29EB1555), //For tranparancy 0x15
                          ),
                          child: Slider(  
                            inactiveColor: Color(0xFF8D8E98),
                            min: 0,  
                            max: 200,  
                            value: context.watch<HeightStateProvider>().getHeightValue,  
                            onChanged: (value) {  
                              context.read<HeightStateProvider>().onChanged(value);
                              },  
                            ),
                        );
                      }
                    )
                ],)
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    smallContainer(context,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('WEIGHT',style: TextStyle(color: Color(0xFF8D8E98),fontSize: 18)),
                          Text('${context.watch<WeightStateProvider>().weightValue}',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  context.read<WeightStateProvider>().weightDecrement();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8E98),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Color(0xFF111428),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  context.read<WeightStateProvider>().weightIncrement();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8E98),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Color(0xFF111428),
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],)
                    ),

                    smallContainer(context,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('AGE',style: TextStyle(color: Color(0xFF8D8E98),fontSize: 18)),
                          Text('${context.watch<AgeStateProvider>().ageValue}',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  context.read<AgeStateProvider>().ageDecrement();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8E98),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Color(0xFF111428),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  context.read<AgeStateProvider>().ageIncrement();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8D8E98),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Color(0xFF111428),
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],)
                    ),
                  ],),
              ),
              Container(
                width: double.infinity,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  onPressed: (){
                    int curHeight = context.read<HeightStateProvider>().getHeightValue.toInt();
                    int curWeight = context.read<WeightStateProvider>().getWeightValue.toInt();
                    CalculatorBrain cal = CalculatorBrain(height: curHeight,weight: curWeight);
                    cal.calculateBMI();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(bmi: cal.calculateBMI(),result: cal.getResult(),feedback: cal.getFeedBack(),),
                      ));
                  },
                  child: Center(
                    child: Text('CALCULATE YOUR BMI', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  ),),
              ),
          ],),
        ),
      )
    );
  }
}