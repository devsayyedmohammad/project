import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/globals.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:slider_button/slider_button.dart';

class Emergencymessage extends StatefulWidget {
  const Emergencymessage({super.key});

  @override
  State<Emergencymessage> createState() => _EmergencymessageState();
}

class _EmergencymessageState extends State<Emergencymessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.heightbox,
            Row(
              children: [
                21.39.widthbox,
                GestureDetector(
                  onTap: () {
                    router.goNamed(Routes.navbar.name);
                  },
                  child: SvgPicture.asset(
                    Urls.backarrow,
                    height: 19.62.h,
                    width: 11.35.w,
                  ),
                ),
              ],
            ),
            49.69.heightbox,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Write Emergency Message',
                    style: TextStyle(fontFamily: Typo.regular, fontSize: 24.sp),
                  ),
                  38.heightbox,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
                    height: 243.h,
                    width: 380.w,
                    color: Colorpallets.grey.withOpacity(0.15),
                    child: Text(
                      "Type your Message here..!",
                      style: TextStyle(
                        fontFamily: Typo.regular,
                        fontSize: 12.sp,
                        color: Colors.black.withOpacity(0.50),
                      ),
                    ),
                  ),
                  4.heightbox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Add People",
                        style: TextStyle(
                          fontFamily: Typo.regular,
                          fontSize: 15.sp,
                          color: Colors.black.withOpacity(0.50),
                        ),
                      ),
                    ],
                  ),
                  309.heightbox,
                  Container(
                    width: double.infinity,
                    height: 100.h,
                    // color: Colors.black,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 1.w,
                          top: 3.h,
                          child: Container(
                            width: 373.w,
                            height: 62.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.r),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  color: Colors.black26,
                                  blurRadius: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                        SliderButton(
                          shimmer: false,
                          height: 70.h,
                          width: 375.w,
                          action: () async {
                            router.goNamed(Routes.succesedsendscreen.name);
                          },
                          alignLabel: Alignment.center,
                          buttonSize: 70.r,
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              30.widthbox,
                              Text(
                                "Swipe To Send Message",
                                style: TextStyle(
                                    fontFamily: Typo.medium,
                                    fontSize: 20.sp,
                                    color: Colors.black38),
                              ),
                            ],
                          ),
                          backgroundColor: Colors.transparent,
                          buttonColor: Colors.transparent,
                          icon: Container(
                            width: 70.r,
                            height: 70.r,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: Colorpallets.swipebuton),
                            child: Center(
                              child: SvgPicture.asset(
                                Urls.swipeArrow,
                                height: 26.h,
                                width: 26.w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
