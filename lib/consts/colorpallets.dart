import 'dart:math';

import 'package:flutter/material.dart';

class Colorpallets {
  static Color lightpurple = Color(0xffD8B9FF);
  static Color black = Color(0xff000000);
  static Color countdownbg = Color(0xffE1E1E1);
  static Color backgroundforcountdownring = Color.fromARGB(255, 153, 0, 255);

  static Gradient circularcountdowncolor = SweepGradient(
    startAngle: pi / 4,
    colors: [
      Colors.green,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      const Color.fromARGB(255, 237, 20, 5),
      const Color.fromARGB(255, 237, 20, 5),
      const Color.fromARGB(255, 237, 20, 5),
      const Color.fromARGB(255, 237, 20, 5),
      const Color.fromARGB(255, 237, 20, 5),
      const Color.fromARGB(255, 237, 20, 5),
      const Color.fromARGB(255, 237, 20, 5),
      Colors.green,
      Colors.green,
      Colors.green,
      Colors.green,
      Colors.green,
      Colors.green,
      Colors.green,
      // Colors.blue
    ],
  );
}
