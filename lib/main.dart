import 'package:flutter/material.dart';
import 'package:helloworld6/quiz.dart';
import 'package:helloworld6/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  // or final questions = const [];
  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'red', 'score': 5},
        {'text': 'blue', 'score': 8},
        {'text': 'white', 'score': 15},
        {'text': 'black', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'lion', 'score': 4},
        {'text': 'tiger', 'score': 7},
        {'text': 'cat', 'score': 14},
        {'text': 'dog', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'fish curry', 'score': 3},
        {'text': 'chicken tikka', 'score': 6},
        {'text': 'matar paneer', 'score': 13},
        {'text': 'mutton kebab', 'score': 8},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore+=score;
    });
  }

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
