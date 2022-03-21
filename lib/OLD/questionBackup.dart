import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 500,
      margin: const EdgeInsets.all(20),
      padding: EdgeInsets.only(left : 5,),
      //alignment: Alignment.center,
      //color: Colors.amber[600],
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 38),
        textAlign: TextAlign.center,
        //textDirection: TextDirection.rtl,
      ),
    );
  }
}
