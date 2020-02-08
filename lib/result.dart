import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  const Result(this.score, this.resetQuiz);

  String get result {
    String resultText;
    if (score >= 20) {
      resultText = 'You are awesome';
    } else if (score >= 15) {
      resultText = 'Pretty likeable';
    } else if (score >= 10) {
      resultText = 'You are strange';
    } else {
      resultText = 'you are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Score: $score',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Text(
          result,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
        FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Text("Restart Quiz!"),
          onPressed: resetQuiz,
        )
      ],
    ));
  }
}
