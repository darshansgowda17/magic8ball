import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int answer = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text("Magic 8 Ball"),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(child: InkWell(
              onTap: () {
                setState(() {
                  answer = Random().nextInt(5)+1;
                });
                },
            child: Ink.image(
              width: 300,
              height: 300,
              image: AssetImage("images/ball$answer.png"),
            )),)),
        ),

    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         appBar: AppBar(
//           title: Center(child: Text("Magic 8 Ball"),
//           ),
//           backgroundColor: Colors.blue[900],
//           ),
//         body: Padding(
//           padding: EdgeInsets.all(25.0),
//           child: Center(child: Expanded(child: Image.asset("images/ball1.png"))),
//         ),
//         ),
//
//     );
//   }
// }

