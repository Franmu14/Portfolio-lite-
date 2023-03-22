import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(left:80.0, right: 80.0, bottom: 40.0, top: 160.0),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // deliver groceries
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
                
              ),
              ),
          ),

          Spacer(),

          // fresh items everyday
          Text(
            "Fresh items every day",
            style: TextStyle(
              color: Colors.grey[600]
            ),),

          //get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context){
                return HomePage();
              })),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(24),
              child: Text(
                "Get Started", 
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),

          Spacer(),
        ],
      ),
    );
  }
}