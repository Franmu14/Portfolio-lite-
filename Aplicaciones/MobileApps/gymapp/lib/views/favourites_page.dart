import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorite"),
          centerTitle: true, // Center the title of the app bar
          backgroundColor: Colors.red,
        ),
    );
  }
}