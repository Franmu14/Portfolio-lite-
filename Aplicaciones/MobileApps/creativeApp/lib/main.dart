import 'package:badjokesapp/buttons.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  var jokes = [    
  {"question": "Welcome", "answer": "..."},     
  {"question": "to", "answer": "..."},    
  {"question": "my", "answer": "..."},    
  {"question": "app", "answer": "..."},  ];

  var jokeIndex= 0;

  void changeJokeIndex(String direction) {
      if(direction == "next"){
        if (jokeIndex != jokes.length - 1){
          setState(() {
          jokeIndex++;          
        });
        }
        else {
          setState((){
            jokeIndex= 0;
          }
          );
        }
        
        
      } else if (direction == "prev"){
        if (jokeIndex !=0){
          setState(() {
          jokeIndex--;          
        });
        }
        else {
          setState((){
            jokeIndex= 0;
          }
          );
        }
      }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(question: jokes[jokeIndex]["question"] as String),
              Answer(answer: jokes[jokeIndex]["answer"] as String),
              Buttons(changeJokeIndex: changeJokeIndex),
            ],
          ),
        ),
      ),
    );
  }
}
