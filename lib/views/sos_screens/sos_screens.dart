import 'dart:math';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';

class SosScreens extends StatelessWidget {
  const SosScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            113.heightbox,
            Row(
              children: [
                27.widthbox,
                Text(
                  "Safety Check",
                  style: TextStyle(fontFamily: Typo.regular, fontSize: 24.sp),
                ),
              ],
            ),
            7.heightbox,
            Row(
              children: [
                27.widthbox,
                Text(
                  "If there's no response, emergency sharing\nwill begin in...",
                  style: TextStyle(fontFamily: Typo.regular, fontSize: 18.sp),
                ),
              ],
            ),
            98.heightbox,
            Row(
              children: [
                70.widthbox,
                Container(
                  child: CircularCountDownTimer(
                      backgroundColor: const Color.fromARGB(255, 211, 210, 208),
                      width: 289,
                      strokeWidth: 10,
                      strokeCap: StrokeCap.round,
                      height: 289,
                      duration: 5,
                      textStyle: TextStyle(fontSize: 53),
                      fillColor: const Color.fromARGB(255, 0, 0, 0),
                      fillGradient: SweepGradient(
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
                      ),
                      ringColor: Colors.purple),
                ),
              ],
            ),
            37.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 62.h,
                  width: 338.w,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: Colors.purple),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10.r,
                          offset: Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30.5.r)),
                ),
              ],
            ),
            18.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 62.h,
                  width: 338.w,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: Colors.purple),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10.r,
                          offset: Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30.5.r)),
                ),
              ],
            ),
            18.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 62.h,
                  width: 338.w,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: Colors.purple),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10.r,
                          offset: Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30.5.r)),
                ),
              ],
            ),
            18.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.sp),
                    "Note : After Swiping your current Location is Shared with\nTrusted Contacts until and unless you turn it “OFF”")
              ],
            )
          ],
        ),
      ),
    );
  }
}
