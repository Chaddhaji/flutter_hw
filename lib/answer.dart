import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerQuestion;
  final Function selectHandler;
  Answer({this.answerQuestion, this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.answerQuestion),
        onPressed: selectHandler,
      ),
    );
  }
}
