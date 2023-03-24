import 'package:flutter/material.dart';
import 'package:musicapp/components/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(children: [
            // back button and menu button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
            ],
            ),

            SizedBox(height: 25,),
              
            // cover art, artist name, song name
            NewBox(
              child: Column(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('lib/images/firework.jpg')
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                            'Artist Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey.shade700
                              ),
                            ),
                          SizedBox(height: 6),
                          Text(
                            'Song name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              )
                          )
                        ],
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                          ),
                      ],
                    ),
                  )
                ],
              )
            ),

            SizedBox(height: 25,),
              
            //start time, shuffle button, repeat button, end time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('0:00'),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text('4:22')
            ],
            ),

            SizedBox(height: 25,),
              
            // linear progress bar
            NewBox(
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.8,
                progressColor: Colors.green[200],
                backgroundColor: Colors.transparent,
              ),
            ),
              
            //previous song, pause, play button, skip next song
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Expanded(
                    child: NewBox(child: Icon(
                      Icons.skip_previous,
                      size: 32))
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: NewBox(child: Icon(
                        Icons.play_arrow,
                        size: 32)),
                    )
                  ),
                  Expanded(
                    child: NewBox(child: Icon(
                      Icons.skip_next,
                      size: 32,))
                  ),
              ],
              ),
            ),
          ],),
        ),
      )
    );
  }
}