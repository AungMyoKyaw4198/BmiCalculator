import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget smallContainer(context,Widget cardChild){
  return Container(
    decoration: BoxDecoration(
      // color: Color(0xFF1D1F33),
      color: Colors.grey[900],
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5.0,5.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0
                        ),
                        BoxShadow(
                          color: Colors.grey[850],
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0
                        ),
                      ]
    ),
    width: MediaQuery.of(context).size.width/2.5,
    height: double.infinity,
    margin: EdgeInsets.all(15),
    child: cardChild,
  );
}

Widget bigContainer(context,Widget cardChild){
  return Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Color(0xFF1D1F33),
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5.0,5.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0
                        ),
                        BoxShadow(
                          color: Colors.grey[850],
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0
                        ),
                      ]
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.all(15),
                    child: cardChild,
                  ),
                );
}