import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Answer extends StatelessWidget {
  final Function selectH;
  final String answerT;
  Answer(this.selectH, this.answerT);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerT),
        onPressed: selectH,
      ),
    );
  }
}
