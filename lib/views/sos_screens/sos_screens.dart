import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
