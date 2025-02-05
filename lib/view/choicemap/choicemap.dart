import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:humansafety/consts/globals.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:humansafety/view/navbar_screen/navbar.dart';

class Choicemap extends StatelessWidget {
  const Choicemap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            45.heightbox,
            GestureDetector(
              onTap: () {
                selectedscreen = 3;
                router.goNamed(Routes.navbar.name);
              },
              child: SvgPicture.asset(
                Urls.backarrow,
                fit: BoxFit.scaleDown,
              ),
            ),
            41.heightbox,
            Text(
              "Pick-up",
              style: TextStyle(fontFamily: Typo.regular, fontSize: 24.sp),
            ),
            33.heightbox,
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
