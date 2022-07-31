import 'package:flutter/material.dart';
import 'package:newapplication/answer.dart';
import 'package:newapplication/questions.dart';
import 'package:newapplication/quiz.dart';
import './result.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> {
   var  _questionIndex =0 ;
   int TotalScore =0 ;
   void _resetQuiz(){
    setState((){
      _questionIndex = 0;
      TotalScore =0 ;
    }) ;
   }
  void _AnswerQuestions(  int  Score){
    TotalScore+=Score;
    setState((){
      _questionIndex = _questionIndex+1;
    });
    if(_questionIndex < _questions.length){
      print("more qs are there");
  }
  }
  final _questions = const [{'questionS': 'your favourite animal', 'answerS': [{'Score':6 ,'text':'lion'} , {'Score': 10  , 'text': 'tiger'} , {'Score' : 8 , 'text' : 'cheetah' }, {'Score': 1 , 'text': 'panther'}]
  },
{'questionS':'your favourite Cricketer' ,  'answerS': [{'Score':4 ,'text':'Steve Smith'} , {'Score': 5  , 'text': 'Gilchrist'} , {'Score' : 8 , 'text' : 'Sachin' }, {'Score': 1 , 'text': 'Kohli'}]},
    {'questionS':'your favourite footballer' ,  'answerS': [{'Score':6 ,'text':'ronaldo'} , {'Score': 1  , 'text': 'messi'} , {'Score' : 8 , 'text' : 'bale' }, {'Score': 1 , 'text': 'beckham'}]},{
    'questionS' : 'who is  ronaldo' , 'answerS': [{'Score':3 ,'text':'footballer'} , {'Score': 2  , 'text': 'crcicketer'} , {'Score' : 2 , 'text' : 'Tennis Player' }, {'Score': 1 , 'text': 'Hockey Player'}]
    }];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar:AppBar(
      title:  Text ('My new Flutter App '),

    ),
    body:  _questionIndex < _questions.length ?
        quiz(questions: _questions, AnswerQuestion: _AnswerQuestions, questionIndex: _questionIndex)
    : Result(TotalScore,_resetQuiz ),
    )
    );

  }


}