import 'package:flutter/material.dart';
import 'package:musicapp/components/new_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          // back button and menu button
          Row(children: [
            SizedBox(
              height: 80,
              width: 80,
              child: NewBox(child: Icon(Icons.arrow_back)),
              ),
            Text("P L A Y L I S T"),
            SizedBox(
              height: 80,
              width: 80,
              child: NewBox(child: Icon(Icons.menu)),
              ),
          ],)
      
          // cover art, artist name, song name
      
          //start time, shuffle button, repeat button, end time
      
          // linear progress bar
      
          //previous song, pause, play button, skip next song
        ],),
      )
    );
  }
}