import 'package:flutter/material.dart';
import 'package:helloworld6/question.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 30) {
      resultText = 'Pretty Likeable!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            this.resultPhrase,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Restart Quiz",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            onPressed: this.resetHandler,
          )
        ],
      ),
    );
  }
}
