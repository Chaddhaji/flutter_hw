import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30.0),
      child: Text(
        this.questionText,
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
