// ignore: file_names
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_workshop/MyHeader.dart';

import 'MyStrengthBox.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void setCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green.shade100,
        appBar: AppBar(
          title: Text("My Awesome Page"),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 25),
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Hi! My name is",
                      style: TextStyle(
                        backgroundColor: Colors.green.shade100,
                        color: Colors.green.shade900,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Loid Forger.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/loid.jpg"),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "There are $counter people who think I'm awesome.",
                        style: TextStyle(
                          color: Colors.green.shade900,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade300,
                            shadowColor: Colors.green.shade600,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () {
                          setCounter();
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 120,
                          child: Text(
                            "Do you think I'm awesome?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.teal.shade800,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              MyHeader(),
              SizedBox(height: 20),
              MyStrengthBox(
                description:
                    "I am a master of disguise. I am the man of a thousand faces.",
                gradientColor: <Color>[
                  Color.fromARGB(255, 243, 193, 100),
                  Color.fromARGB(255, 232, 203, 179),
                  Color.fromARGB(255, 138, 226, 223),
                ],
              ),
              SizedBox(height: 20),
              MyStrengthBox(
                description:
                    "I am a expert of persuasion. I can sweet talk anyone I meet.",
                gradientColor: <Color>[
                  Color.fromARGB(255, 230, 95, 95),
                  Color.fromARGB(255, 185, 89, 137),
                  Color.fromARGB(255, 167, 133, 173),
                ],
              ),
              SizedBox(height: 20),
              MyStrengthBox(
                description:
                    "I am a black belt ninja. I can handle 10 fighters at once.",
                gradientColor: <Color>[
                  Color.fromARGB(255, 147, 218, 223),
                  Color.fromARGB(255, 136, 165, 237),
                  Color.fromARGB(255, 223, 157, 227),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
