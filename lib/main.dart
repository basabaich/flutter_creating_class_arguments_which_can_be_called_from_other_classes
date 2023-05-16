//
//File: gradient_container_class1.dart
//

import 'package:flutter/material.dart';
import '../gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          //Here in the below code lines we are using list argument "colors"
          //and defining all colors from main.dart file or "MyApp()" class
          //and not from "GradientContainer()" class. Actually this can now be
          //done from any class.
          //
          colorsArguemnt: [
            Color.fromARGB(255, 160, 90, 70),
            Color.fromARGB(255, 180, 175, 65),
          ],
        ),
      ), //Scaffold
    ); //MaterialApp
  }
}
