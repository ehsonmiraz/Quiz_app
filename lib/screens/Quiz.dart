import 'package:baby_app/screens/templates/answers.dart';
import 'package:baby_app/screens/templates/question.dart';
import 'package:flutter/material.dart';
class Quiz extends StatelessWidget{

  final List<Map<String,Object>> questions;
  final Function(int score) answerQues;
  int questionIndex;
  Quiz({ required  this.questions, required this.questionIndex, required this.answerQues});

  Widget build(BuildContext context){
  return Container(child: Center(child: Padding(
    padding: const EdgeInsets.all(13.0),
    child: Column(
      children: <Widget>[
        Question(questions[questionIndex]['ques_text']),
        SizedBox(width: double.infinity,height:10),
        ...(questions[questionIndex]['answers'] as List<Map<String,dynamic>>).map((value){
          return Answers((){ answerQues(value['score']);},value['text']) ;}).toList()
      ],
    ),
  ),),);
  }
}