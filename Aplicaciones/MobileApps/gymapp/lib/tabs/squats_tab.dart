import 'package:flutter/material.dart';

class SquatsTab extends StatelessWidget {
  const SquatsTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.network(
              'https://www.mensjournal.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk2MTM1ODU1MzI2NjM1MTUz/squat-barbell.jpg',
              fit: BoxFit.cover,
              width: 200, // Specify the desired width of the image
              height: 200, // Specify the desired height of the image
            ),
            SizedBox(height: 10),
            Text('Squat')
          ],
        ),
      ),
    );
  }
}