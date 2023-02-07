import 'package:flutter/material.dart';

class SecretScreen extends StatelessWidget {
  const SecretScreen({super.key, required this.name});

  final name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Secret Page")),
      body: Text("Your name is ${name}. I know you."),
    );
  }
}
