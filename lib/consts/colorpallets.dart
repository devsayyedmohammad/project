import 'dart:math';

import 'package:flutter/material.dart';

class Colorpallets {
  static Color lightpurple = Color(0xffD8B9FF);
  static Color black = Color(0xff000000);
  static Color red = Color(0xffff0000);
  static Color greyfont = Color(0xff807B7B);
  static Color countdownbg = Color(0xffE1E1E1);
  static Color whiteredbuttons = Color(0xffF55656);
  static Color greenbuttons = Color(0xff2FD281);
  static Color backgroundforcountdownring = Color.fromARGB(255, 153, 0, 255);

  static Gradient whiteredgradientbuttons = LinearGradient(
    colors: [Color(0xffFF7A7A), Color(0xffE21010)],
  );

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
