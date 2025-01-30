import 'dart:math';

import 'package:flutter/material.dart';

class Colorpallets {
  static Color lightpurple = Color(0xffD8B9FF);
  static Color black = Color(0xff000000);
  static Color red = Color(0xffff0000);
  static Color urlcolor = Color(0xff0000EE);
  static Color greyfont = Color(0xff807B7B);
  static Color countdownbg = Color(0xffE1E1E1);
  static Color whiteredbuttons = Color(0xffF55656);
  static Color greenbuttons = Color(0xff2FD281);
  static Color backgroundforcountdownring = Color(0xffF8F8F8);

  static Gradient whiteredgradientbuttons = LinearGradient(
    colors: [Color(0xffFF7A7A), Color(0xffE21010)],
  );

  static Gradient circularcountdowncolor = SweepGradient(
    startAngle: pi / 4,
    colors: [
      Colors.green.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      Colors.yellow.withOpacity(0.8),
      const Color.fromARGB(255, 237, 20, 5).withOpacity(0.8),
      const Color.fromARGB(255, 237, 20, 5).withOpacity(0.8),
      const Color.fromARGB(255, 237, 20, 5).withOpacity(0.8),
      const Color.fromARGB(255, 237, 20, 5).withOpacity(0.8),
      const Color.fromARGB(255, 237, 20, 5).withOpacity(0.8),
      const Color.fromARGB(255, 237, 20, 5).withOpacity(0.8),
      const Color.fromARGB(255, 237, 20, 5).withOpacity(0.8),
      Colors.green.withOpacity(0.8),
      Colors.green.withOpacity(0.8),
      Colors.green.withOpacity(0.8),
      Colors.green.withOpacity(0.8),
      Colors.green.withOpacity(0.8),
      Colors.green.withOpacity(0.8),
      Colors.green.withOpacity(0.8),
      // Colors.blue
    ],
  );
}
