import 'package:flutter/material.dart';

class MyStrengthBox extends StatelessWidget {
  const MyStrengthBox({
    Key? key,
    this.description,
    this.gradientColor,
  }) : super(key: key);

  final description;
  final gradientColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(colors: gradientColor),
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.green.shade200.withOpacity(0.6),
              offset: Offset(5, 5),
              blurRadius: 5.0,
              spreadRadius: 5.0),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  "Top Skill",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              description,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
