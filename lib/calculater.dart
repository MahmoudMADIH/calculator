import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';

class claculater extends StatefulWidget {
  const claculater({super.key});

  @override
  State<claculater> createState() => _claculaterState();
}

class _claculaterState extends State<claculater> {
    String result= " " ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("calcutater"),),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "${result==" " ?"0.0":result}" ,
                    textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold
                     ),
                  ),
                ],
              ),
          ),
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget('7' ,ondigetclik),
                  ButtonWidget('8', ondigetclik),
                  ButtonWidget('9', ondigetclik),
                  ButtonWidget('+',onOperatotclik),
                ],
              )
          ),
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget('4',ondigetclik),
                  ButtonWidget('5', ondigetclik),
                  ButtonWidget('6' ,ondigetclik),
                  ButtonWidget('-',onOperatotclik),
                ],
              )
          ),
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget('1', ondigetclik),
                  ButtonWidget('2', ondigetclik),
                  ButtonWidget('3' ,ondigetclik),
                  ButtonWidget('*', onOperatotclik),
                ],
              )
          ),
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget('0', ondigetclik),
                  ButtonWidget('.', ondigetclik),
                  ButtonWidget('=',OequelClik),
                  ButtonWidget('/',onOperatotclik),
                ],
              )
          ),
        ],

      )
    );
  }
  String LHS="";
  String operator="";
  void ondigetclik(String digit){

    print(digit);
    setState(() {
      result+=digit;
    });


  }
  void onOperatotclik(String operatorclik){
    if (LHS.isEmpty){
      LHS=result ;

    }
    else {
      String RHS=result ;
      LHS =calculator(LHS,operator,RHS).toString();


      }
    setState(() {

    });
    result=" ";
    operator=operatorclik;
    }
    double? calculator( LHS, operator, RHS){
       double LHSdouble= double.parse(LHS);
       double RHSdouble =double.parse(RHS);

      if (operator=='+'){return LHSdouble+RHSdouble;}
       if (operator=='-'){return LHSdouble-RHSdouble;}
       if (operator=='*'){return LHSdouble*RHSdouble;}
       if (operator=='/'){return LHSdouble/RHSdouble;}





  }
  void OequelClik(){
    print (LHS);
    print(result);
    print(operator);

      result=calculator(LHS,operator,result).toString();
      LHS=" ";
      setState(() {
      });


  }
}
