import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerToQuestions;

  Quiz(
      {@required this.questions,
      @required this.answerToQuestions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Column(
      children: [
        Flexible(
          flex: 10,
          fit: FlexFit.loose,
          child: Question(
            questions[questionIndex]['questionText'],
          ),
        ),
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Answer(
                  () => answerToQuestions(answer['score']), answer['text']));
        }).toList()
      ],
    );
  }
}
