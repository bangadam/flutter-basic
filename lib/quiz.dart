import 'package:flutter/material.dart';

import 'answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestionButton;
  final int questionIndex;

  const Quiz(
      {@required this.questions,
      @required this.answerQuestionButton,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestionButton(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
