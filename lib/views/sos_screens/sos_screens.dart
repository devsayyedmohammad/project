import 'dart:math';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:slider_button/slider_button.dart';

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
                      backgroundColor: Colorpallets.countdownbg,
                      width: 289,
                      strokeWidth: 10,
                      strokeCap: StrokeCap.round,
                      height: 289,
                      duration: 10,
                      textStyle: TextStyle(fontSize: 53),
                      fillColor: const Color.fromARGB(255, 0, 0, 0),
                      fillGradient: Colorpallets.circularcountdowncolor,
                      ringColor: Colorpallets.backgroundforcountdownring),
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
                SizedBox(
                  width: 350,
                  child: SliderButton(
                      action: () async {
                        ///Do something here OnSlide
                        return true;
                      },
                      label: Text(
                        "Swipe to Share locaton",
                        style: TextStyle(
                            color: Color(0xff4a4a4a),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      icon: Icon(Icons.location_city)),
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
