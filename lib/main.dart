import 'package:baby_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:Text("Quiz APP",style:TextStyle(fontSize: 9)),leading:Icon(Icons.add_alarm_rounded,)),
        body:Home(),
      ),
    );
  }
}
//const ({Key? key}) : super(key: key);
