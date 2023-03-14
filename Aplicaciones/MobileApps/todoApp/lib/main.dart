import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';
import 'package:todoapp/widgets/counter.dart';
import 'package:todoapp/widgets/new_todo.dart';
import 'package:todoapp/widgets/todo_cards.dart';
import 'package:todoapp/widgets/todo_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   final List<Todo> todos = [
    Todo(id: "1", title: "Clean Room", completed: false),
    Todo(id: "2", title: "Pet the Cat", completed: false),
    Todo(id: "3", title: "Dance", completed: true)
  ];

  void showAddTodoModal(BuildContext context){
    showModalBottomSheet(context: context, builder: (bCtx){
              return NewTodo(addTodo: addTodo);
            });
  }

  void addTodo(String todo){
    setState(() {
      todos.add(Todo(
        id: "4", 
        title: todo, 
        completed: false
        ));
    });
  }

  int calcTotalCompletions (){
    var totalCompletions=0;

    todos.forEach((todo) {
      if(todo.completed){
        totalCompletions++;
      }
     });

     return totalCompletions;
  }
  
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Counter(
              numberOfTodos: todos.length,
              TotalCompletions: calcTotalCompletions (),
            ),
            TodoList(todos: todos)
          ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showAddTodoModal(context);
          },
          child: Icon(Icons.add),),
    );
  }

 }