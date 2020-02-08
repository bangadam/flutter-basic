import 'package:flutter/material.dart';
import 'package:flutter_basic/answer.dart';
import 'package:flutter_basic/quiz.dart';
import './questions.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'question': 'What\'s your favorite color ?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 2}
      ],
    },
    {
      'question': 'What\'s your favorite animal ?',
      'answer': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Cat', 'score': 10},
        {'text': 'Tiger', 'score': 4}
      ],
    },
    {
      'question': 'What\'s your favorite instructor ?',
      'answer': [
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 1},
        {'text': 'MAx', 'score': 9}
      ],
    }
  ];

  void _answerQuestionButton(int totalScore) {
    _totalScore += totalScore;

    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestionButton: _answerQuestionButton,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
