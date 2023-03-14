import 'package:flutter/material.dart';

class Counter extends StatelessWidget {

  final int numberOfTodos;
  final int TotalCompletions;

  Counter({
    required this.numberOfTodos,
    required this.TotalCompletions

  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Text(
        "$TotalCompletions/$numberOfTodos",
        style: TextStyle(
          fontSize: 75,
        )
        )
    );
  }
}