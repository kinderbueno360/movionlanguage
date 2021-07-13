import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  final bool questionState;

  Answer(this.selectHandler, this.answerText, this.questionState);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: questionState == true ? Text(answerText) : Text("See"),
        textColor: Colors.white,
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
