//
//File: styled_text.dart
//

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        // "Hello World!",//This code is replaced with the new variable below
        text,
        //
        //In the above situation we are calling "StyledText" class, from another
        //class & which is in another file. However, we should be working with
        //these codes flexibilly.
        //To have the flexibility, we need to control what text this "StyledText"
        //class will be showing should be controlled by another class in another
        //file such that the text will not always show "Hello World". Instead,
        //it should show what the other class decides i.e. what
        //"GradientContainer" class decides (As class "StyledText()" is called
        //from there).
        //
        //To do this kind of flexiblity, we need to include a variable inside
        //the constructor function of this class, i.e. inside the following
        //code line at the top:
        //
        //"const GradientContainer({super.key});"
        //
        //Here, along with the "super.key" there should be another "named" or
        //"positional" variables which will be the text string & which will be
        //shown by the "StyledText" class.
        //
        //Thus if we put "this.text" as below, it tells flutter that the
        //positional variable "text" should be equated with the "final String
        //text" variable below & this "text" argument can be called from any
        //class & any string value can be passed from that class to show it
        //as a text.
        //
        //"const GradientContainer(this.text, {super.key});"
        //"final String text;"
        //
        //
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: 22.0,
        ), //TextStyle
      ), //Text
    ); //Center
  }
}
