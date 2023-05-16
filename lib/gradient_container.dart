//
//File: gradient_container.dart
//

import 'package:flutter/material.dart';
import '../styled_text.dart';

class GradientContainer extends StatelessWidget {
  //"const GradientContainer({super.key});"
  //Above constructor of this class is now commented out and below code line
  //for constructor is being used. Here the "List" colors is being used as a
  //positional arguments. Generally positional arguments are optional, however
  //in this case this argument can not be be optional or null & it must have
  //some values. So, we have to put required before the argument. As such the
  //modified lines below is the new changed constructor code line:
  //
  const GradientContainer({super.key, required this.colorsArguemnt});
//
//
  final List<Color> colorsArguemnt;
//We are defining a "List" variable for Color type as final & calling it
//"colors"

  //
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsArguemnt,
          //
          //Above the "colors" (2nd one) variable is used against "colors:"
          //The below line of codes were the actual line of hard codes which
          //were commented out as we have defined a list variable for "Color".
          //
          // "[
          //  Color.fromARGB(255, 160, 90, 70),
          //  Color.fromARGB(255, 180, 175, 65),
          // ],"
          //
          //
        ), //LinearGradient
      ), //BoxDecoration
      child: const StyledText('Hello World!'),
      //Whatever code we will put in the "StyledText" class / function,
      //will be treated as an "argument" for "StyledText" class. How this is
      //done ? to know this you need to see the "StyledText" class in that
      //file
      //
      //
    ); //Container
  }
}
