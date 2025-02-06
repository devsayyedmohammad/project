import 'dart:math';
import 'package:flutter/material.dart';

class Colorpallets {
  static Color violet = Color(0xffE6D6F8);
  static Color lightpurple = Color(0xffD8B9FF);
  static Color grey = Color(0xffB9B9B9);
  static Color greyfont = Color(0xff807B7B);
  static Color black = Color(0xff000000);
  static Color red = Color(0xffff0000);
  static Color urlcolor = Color(0xff0000EE);
  static Color countdownbg = Color(0xffE1E1E1);
  static Color whiteredbuttons = Color(0xffF55656);
  static Color greenbuttons = Color(0xff2FD281);
  static Color backgroundforcountdownring = Color(0xffF8F8F8);
  static Color tickmark3 = Color(0xffE8FFF1);
  static Color ticktext = Color(0xff808080);
  static Color profile = Color(0xffDDDDDD);
  static Color white = Color(0xffffffff);
  static Color swipe = Color(0xffA6A6A6);
  static Color circlerotate = Color(0xffC2C2C2);
  static Color purple = Color(0xffC088FF);

  static Gradient whiteredgradientbuttons = LinearGradient(
    colors: [Color(0xffFF7A7A), Color(0xffE21010)],
  );

  static Gradient swipebuton = LinearGradient(
    colors: [
      Color(0xffFE7777),
      Color(0xffEB3232),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.bottomCenter,
  );

  static Gradient tickMark = LinearGradient(
    colors: [
      Color(0xff6FFFD6),
      Color(0xff60C09A),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  );

  static Gradient tickMark2 = LinearGradient(
    colors: [
      Color(0xff22E8A9),
      Color(0xff1BB786),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
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
