import 'dart:math';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:humansafety/views/sos_screens/location_sharing_screen.dart';
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
                      duration: 15,
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
                  width: 338.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.5.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 10.r, // Blur effect
                        offset: Offset(5, 5), // Position offset
                      ),
                    ],
                  ),
                  child: SliderButton(
                    action: () async {
                      ///Do something here OnSlide
                      return true;
                    },
                    alignLabel: Alignment.center,
                    buttonSize: 62.r,
                    backgroundColor: Colors.white,
                    baseColor: Colorpallets.greyfont,
                    label: Text(
                      "I’m Safe",
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 20.sp),
                    ),
                    buttonColor: Colorpallets.greenbuttons,
                    icon: Icon(
                      Icons.check,
                      size: 41.r,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            18.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 338.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.5.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 10.r, // Blur effect
                        offset: Offset(5, 5), // Position offset
                      ),
                    ],
                  ),
                  child: SliderButton(
                      action: () async {
                        ///Do something here OnSlide
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LocationSharingScreen(),
                          ),
                        );
                        return true;
                      },
                      alignLabel: Alignment.center,
                      buttonSize: 62.r,
                      backgroundColor: Colors.white,
                      baseColor: Colorpallets.greyfont,
                      label: Text(
                        "Start sharing now",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 20.sp),
                      ),
                      buttonColor: Colorpallets.whiteredbuttons,
                      icon: SvgPicture.asset(Urls.location)),
                ),
              ],
            ),
            18.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 338.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.5.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 10.r, // Blur effect
                        offset: Offset(5, 5), // Position offset
                      ),
                    ],
                  ),
                  child: SliderButton(
                    action: () async {
                      ///Do something here OnSlide
                      return true;
                    },
                    alignLabel: Alignment.center,
                    buttonSize: 62.r,
                    backgroundColor: Colors.white,
                    baseColor: Colorpallets.greyfont,
                    label: Text(
                      "Call 112",
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 20.sp),
                    ),
                    buttonColor: Colorpallets.whiteredbuttons,
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
