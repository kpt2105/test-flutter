import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(90),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ));
  }
}
