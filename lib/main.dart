import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/globals.dart';
import 'package:humansafety/view/home_screen/home_screen.dart';
import 'package:humansafety/view/navbar_screen/navbar.dart';
import 'package:humansafety/view/tp.dart';

void main() {
  runApp(const HumanSafty());
}

class HumanSafty extends StatelessWidget {
  const HumanSafty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        // theme: ThemeData(
        //   inputDecorationTheme: InputDecorationTheme(
        //     filled: true,
        //     fillColor: Colorpallets.white,
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(5.r),
        //     ),
        //     focusedBorder: OutlineInputBorder(
        //       borderSide: BorderSide(color: Colorpallets.purple),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
