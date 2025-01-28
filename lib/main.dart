import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/view/home_screen.dart';
import 'package:humansafety/view/navbar.dart';

void main() {
  runApp(const HumanSafty());
}

class HumanSafty extends StatelessWidget {
  const HumanSafty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navbar(),
      ),
    );
  }
}
