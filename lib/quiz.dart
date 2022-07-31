import 'package:flutter/material.dart';
import './Myapp.dart';
import './questions.dart';
import './answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;

  final AnswerQuestion;

  final int questionIndex;

  quiz(
      {required this.questions,
      required this.AnswerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['questionS']! as String),
        // RaisedButton(child :Text('option 1') ,onPressed: _AnswerQuestions) ,
        //   RaisedButton(child :Text('option 2') ,onPressed: _AnswerQuestions) ,
        //   RaisedButton(child :Text('option 3') ,onPressed: _AnswerQuestions) ,
        //   RaisedButton(child :Text('option 4') ,onPressed: _AnswerQuestions)
        //     Answers(_AnswerQuestions)
        //    Answers(_AnswerQuestions),
        //    Answers(_AnswerQuestions),
        //    Answers(_AnswerQuestions),
        ...(questions[questionIndex]['answerS'] as List<Map<String, Object>>)
            .map((soln) {
          return Answers(
              () => AnswerQuestion(soln['Score']), soln['text'] as String);
        }).toList()
      ],
    );
  }
}
