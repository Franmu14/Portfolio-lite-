import 'package:flutter/material.dart';

class Buttons extends StatelessWidget{

  final Function(String) changeJokeIndex;

  Buttons({required this.changeJokeIndex});


  @override
  Widget build(BuildContext context){
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.arrow_left_rounded,
                        size: 60,
                      ),
                      onPressed: (){changeJokeIndex("prev");},
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 60,
                        ),
                      onPressed: (){
                        changeJokeIndex("next");
                        },
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              );
  }

}