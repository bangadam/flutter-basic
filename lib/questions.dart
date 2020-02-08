import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionsText;

  Questions(String questionsText) {
    this.questionsText = questionsText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
