import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:main/quiz.dart';

import './result.dart';
import './quiz.dart';

// import 'dart:io';
// import 'package:flutter/foundation.dart';

// void main() => runApp(TestApp());

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestAppState();
  }
}

class TestAppState extends State<TestApp> {
  final questions = const [
    {
      'questionText': 'Test questions 1',
      'answerText': [
        {'text': 'B2', 'score': 55},
        {'text': 'B2', 'score': 33},
        {'text': 'B3', 'score': 45},
      ],
    },
    {
      'questionText': 'Test questions 2',
      'answerText': [
        {'text': 'B2', 'score': 55},
        {'text': 'B2', 'score': 33},
        {'text': 'B3', 'score': 45},
      ],
    },
    {
      'questionText': 'Test questions 3',
      'answerText': [
        {'text': 'B2', 'score': 55},
        {'text': 'B2', 'score': 33},
        {'text': 'B3', 'score': 45},
      ],
    },
    {
      'questionText': 'Test questions 4',
      'answerText': [
        {'text': 'B2', 'score': 55},
        {'text': 'B2', 'score': 33},
        {'text': 'B3', 'score': 45},
      ],
    },
  ];

  var questionIndex = 0;
  var totalscore = 0;

  void resQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void answerToQuestions(int score) {
    totalscore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);

    if (questionIndex < questions.length) {
      print('They are questions left');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test-V0.2'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerToQuestions: answerToQuestions,
                questionIndex: questionIndex)
            : Result(totalscore, resQuiz),
      ),
    );
  }
}
