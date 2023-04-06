import 'package:flutter/material.dart';

class PressTab extends StatelessWidget {
  const PressTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.network(
              'https://cdn.mos.cms.futurecdn.net/pLaRi5jXSHDKu6WRydetBo.jpg',
              fit: BoxFit.cover,
              width: 200, // Specify the desired width of the image
              height: 200, // Specify the desired height of the image
            ),
            SizedBox(height: 10),
            Text('Bench Press')
          ],
        ),
      ),
    );
  }
}
