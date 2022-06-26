import 'package:baby_app/screens/templates/question.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  var quesText;
  Question(this.quesText);
  Widget build(BuildContext context){
    return Center(child: Container(
        child: Center(child: Text(quesText,style:TextStyle(fontSize: 20))),
        color: Colors.amberAccent,
        height: 60,
        width: double.infinity,
    ),);
  }
}