import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resH;

  Result(this.resultScore, this.resH);

  String get resultPhrase {
    var resultText = 'YOU DID IT';
    if (resultScore <= 20) {
      resultText = 'YOU DID IT--!!--!!';
    } else if (resultScore <= 12) {
      resultText = 'cool';
    } else {
      resultText = 'GOOD';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Center(
        child: SafeArea(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 5,
            child: Container(height: 100),
          ),
          Flexible(
            flex: 5,
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: Container(height: 115),
          ),
          Flexible(
            child: FlatButton(
              onPressed: resH,
              child: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 30),
              ),
              textColor: Colors.red,
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 300,
            ),
          ),
        ],
      ),
    ));
  }
}
