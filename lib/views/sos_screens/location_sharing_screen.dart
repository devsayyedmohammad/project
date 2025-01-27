import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:slider_button/slider_button.dart';

class LocationSharingScreen extends StatelessWidget {
  const LocationSharingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            120.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 220.h,
                  width: 220.w,
                  decoration: BoxDecoration(
                      gradient: Colorpallets.whiteredgradientbuttons,
                      borderRadius: BorderRadius.circular(200)),
                  child: Center(
                      child: SvgPicture.asset(
                    Urls.location,
                    height: 140.h,
                    width: 90.w,
                  )),
                ),
              ],
            ),
            82.heightbox,
            Container(
              height: 62.h,
              width: 338.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.5.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10.r, // Blur effect
                    offset: Offset(5, 5), // Position offset
                  ),
                ],
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Sharing Location in Process",
                  style: TextStyle(
                      color: Colorpallets.greyfont,
                      fontFamily: Typo.medium,
                      fontSize: 20.sp),
                ),
              ),
            ),
            18.heightbox,
            Container(
              height: 62.h,
              width: 338.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.5.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10.r, // Blur effect
                    offset: Offset(5, 5), // Position offset
                  ),
                ],
                color: Colors.white,
              ),
              child: Row(
                children: [
                  30.widthbox,
                  Icon(
                    size: 30,
                    Icons.power_settings_new,
                    color: Colorpallets.red,
                  ),
                  26.widthbox,
                  Center(
                    child: Text(
                      "Turn OFF Sharing",
                      style: TextStyle(
                          color: Colorpallets.greyfont,
                          fontFamily: Typo.medium,
                          fontSize: 20.sp),
                    ),
                  ),
                ],
              ),
            ),
            184.heightbox,
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
