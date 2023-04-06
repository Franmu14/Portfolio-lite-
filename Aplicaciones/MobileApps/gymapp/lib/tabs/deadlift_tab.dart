import 'package:flutter/material.dart';

class DeadliftTab extends StatelessWidget {
  const DeadliftTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.network(
              'https://www.americanfootballinternational.com/wp-content/uploads/Barbend-2021-Deadlift.png',
              fit: BoxFit.cover,
              width: 200, // Specify the desired width of the image
              height: 200, // Specify the desired height of the image
            ),
            SizedBox(height: 10),
            Text('Deadlift')
          ],
        ),
      ),
    );
  }
}