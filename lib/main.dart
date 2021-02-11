import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion(){
    setState(() {
      questionIndex = questionIndex + 1;
    });
    
    print("llegue");
  }
  
  @override
  Widget build(BuildContext context) {
   var questions= [
     'what is your favorite color1?',
     'what is your favorite animal?'
   ];


   return MaterialApp(home: Scaffold(
     appBar: AppBar(title: Text('My first App'),
     ),
     body: Column(
       children:[
         Question(questions[questionIndex]), 
         RaisedButton(onPressed: answerQuestion , child: Text("Answe 1"),), 
         RaisedButton(onPressed: answerQuestion , child: Text("Answe 2"),), 
         RaisedButton(onPressed: answerQuestion , child: Text("Answe 3"),), 
       ]
     )
   ),
   );
  }
}