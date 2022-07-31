import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final selectHandler;
  final String answer;

  Answers(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
          child: Text(answer),
          textColor: Colors.white,
          color: Colors.orange,
          onPressed: selectHandler),
    );
  }
}
