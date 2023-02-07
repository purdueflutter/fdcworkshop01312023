import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            alignment: Alignment.bottomLeft,
            width: 300,
            height: 7,
            color: Colors.green.shade800,
          ),
        ),
        Text(
          "My Strengths",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
