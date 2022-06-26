import 'dart:html';

import 'package:baby_app/screens/templates/answers.dart';
import 'package:flutter/material.dart';
class Answers extends StatelessWidget{
  var answer;
  final Function() answerQues;
  Answers(this.answerQues,this.answer);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width:double.infinity,
        height:24,

        child: RaisedButton(
          child: Text(answer),onPressed:answerQues,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

}