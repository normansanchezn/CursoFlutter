import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.home, 
            size: 160.0,
            color: Colors.blue
            ),
          Text("Primer tab")
        ],
      )
    );
  }
}