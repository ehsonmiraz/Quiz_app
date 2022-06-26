import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  int totalScore;
  final Function() resetQuiz;
  Result(this.totalScore,this.resetQuiz);

  String get resultPhrase{
    return "You did it! \n Your total score is  $totalScore";
  }



  @override
  Widget build(BuildContext context){
    return Center(child: Column(
      children: [
        Text(resultPhrase,style:TextStyle(fontSize: 28,color: Colors.purple)),
        SizedBox(height: 10,),
        FlatButton(
            child: Text('Restart',style: TextStyle(fontSize: 27),),
            onPressed:resetQuiz,
            height: 25,
            color: Colors.amberAccent,
        )
      ],
    ));
  }
}