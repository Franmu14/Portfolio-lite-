import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {

  final Function(String) addTodo;

  NewTodo({required this.addTodo});
 

  @override
  State<StatefulWidget> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {

  TextEditingController todo_Controller= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget> [
          TextField(
            controller: todo_Controller,
            decoration: InputDecoration(
              labelText: "New Todo"
            ),
            maxLength: 15,
          ),
          TextButton(
            onPressed: (){
              widget.addTodo(todo_Controller.text);
              Navigator.of(context).pop();
            }, 
            child: Text("add"))
        ])     ,
    );
  }
}