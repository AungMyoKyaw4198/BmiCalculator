import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String feedback;
  const ResultPage({Key key,this.bmi,this.result,this.feedback}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Text('Your Result',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40,fontWeight: FontWeight.bold),)),
              Expanded(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Color(0xFF1D1F33),
                      color: Colors.grey[850],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                          Text(result,style: TextStyle(color: Color(0xFF22E67B),fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 2),),
                          Text(bmi,style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 120,fontWeight: FontWeight.bold,letterSpacing: 2),),
                          Container(
                            alignment: Alignment.center,
                            child: Text(feedback,textAlign: TextAlign.center,style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                              // color: Color(0xFF1D1F33),
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black,
                                                  offset: Offset(5.0,5.0),
                                                  blurRadius: 5.0,
                                                  spreadRadius: 1.0
                                                ),
                                                BoxShadow(
                                                  color: Colors.grey[900],
                                                  offset: Offset(-5.0,-5.0),
                                                  blurRadius: 5.0,
                                                  spreadRadius: 1.0
                                                ),
                                              ]
                            ),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: TextButton(
                              onPressed: (){}, 
                              child: Text('SAVE RESULT',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 2),),
                              ),
                          )
                        ],
                      ),
                    ),
                ),
              ),

              Container(
              width: double.infinity,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Center(
                  child: Text('RE-CALCULATE YOUR BMI', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
                ),),
            ),
          ],)
        ),
      ),
    );
  }
}