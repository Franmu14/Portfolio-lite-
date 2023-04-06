import 'package:flutter/material.dart';
import 'components/NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(title: Text('Menu')),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to your App",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                    )
                    ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  height: 5,
                  width: 200,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 100,
                ),
                ],
            ), // Add a comma after Text widget
          ),
        ),
      );
    
  }
}