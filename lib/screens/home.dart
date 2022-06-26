import 'package:baby_app/screens/Quiz.dart';
import 'package:baby_app/screens/result.dart';
import 'package:baby_app/screens/templates/answers.dart';
import 'package:baby_app/screens/templates/question.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState() ;
}
class _HomeState extends State<Home>{
  int _totalScore=0;
  int _quesetionIndex=0;
  void answerQues(int ansScore){
    _totalScore+=ansScore;
    setState((){_quesetionIndex++;});
  }
  void resetQuiz(){
    setState((){
      _quesetionIndex=0;
      _totalScore=0;
    });

  }
  var questions =[
    {'ques_text':'What you fav food?',
     'answers':[{'text':'omelete','score': 4},{'text':'steak','score': 7},{'text':'garlic bread','score': 6},{'text':'biryani','score': 9}]
    },

    {'ques_text':'What you fav movie?',
      'answers':[{'text':'12 angrymen','score': 10},{'text':'batman','score': 8}, {'text':'one flew over the cuckoos nest','score': 9},{'text':'LOTR','score': 8},]
    },

    {'ques_text':'What you fav teacher?',
      'answers':[{'text':'MAX','score': 10},{'text':'DAVID','score': 8}, {'text':'TOM','score': 9},{'text':'Yun Lee','score': 8},]
    },

    {'ques_text':'What you fav cricketer?',
      'answers':[{'text': 'Kane','score': 10},{'text':'Virat','score': 8}, {'text':'Steve','score': 9},{'text':'Joe','score': 8},]
    },
  ];
  @override
  Widget build(BuildContext context){
    return _quesetionIndex<questions.length ? Quiz(questions: questions,questionIndex: _quesetionIndex,answerQues:answerQues) : Result(_totalScore,resetQuiz) ;
    
  }
}

