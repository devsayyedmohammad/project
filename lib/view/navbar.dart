import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/view/home_screen.dart';

class Navbar extends StatefulWidget {
  Navbar({super.key});
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background content (HomeScreen or other widgets)
          HomeScreen(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              height: 100,
              width: 395,
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.3),
                  //     offset: Offset(0, 5),
                  //     blurRadius: 17,
                  //   ),
                  // ],
                  ),
              child: SvgPicture.asset(
                Urls.TimePass, // Replace with your SVG asset
                width: 395,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
