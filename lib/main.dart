import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text("Magic 8 Ball"),
          ),
          backgroundColor: Colors.blue[900],
          ),
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(child: Expanded(child: Image.asset("images/ball1.png"))),
        ),
        ),

    );
  }
}

