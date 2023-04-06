import 'package:flutter/material.dart';

import '../tabs/deadlift_tab.dart';
import '../tabs/press_tab.dart';
import '../tabs/squats_tab.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Exercises"),
          centerTitle: true, // Center the title of the app bar
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepOrange,
                    ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepOrange,
                    ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.deepOrange,
                    ),
                ),
            ]
            ),
            Expanded(
              child: TabBarView(children: [
                  DeadliftTab(),
                  SquatsTab(),
                  PressTab()
                      ]),
            )
          ],
        ),
      ),
    );
  }
}