import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;
  // const NewBox({super.key, required this.child});
  const NewBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(child: child,),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              //darker shadow on the bottom rigth
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(5, 5)
              ),

              //ligther shadow on the top left
              BoxShadow(
                color: Colors.white,
                blurRadius: 15,
                offset: Offset(-5, -5)
              ),
            ]
          ),
        );
  }
}