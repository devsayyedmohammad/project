import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List text = [
    'Speak “Help Help Police',
    'Speak “Help Help Ambulance” ',
    'Speak “Help Help Fire',
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff7f7f7),
        child: Flexible(
          child: Stack(
            children: [
              Positioned(
                top: 630.h,
                left: 17.w,
                child: SvgPicture.asset(
                  Urls.background,
                  width: 396.w,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 17.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.heightbox,
                        Row(
                          children: [
                            Text(
                              "Personal Safety",
                              style: TextStyle(
                                fontFamily: Typo.bold,
                                fontSize: 22,
                              ),
                            ),
                            194.widthbox,
                            SvgPicture.asset(
                              height: 28.h,
                              width: 28.w,
                              Urls.profile,
                            )
                          ],
                        ),
                        56.heightbox,
                        Text(
                          "Get help fast",
                          style: TextStyle(
                            fontFamily: Typo.regular,
                            fontSize: 15,
                          ),
                        ),
                        24.heightbox,
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Row(
                            children: [
                              Container(
                                width: 165.w,
                                height: 165.h,
                                decoration: BoxDecoration(
                                  color: Colorpallets.violet,
                                  borderRadius: BorderRadius.circular(21),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.30),
                                      blurRadius: 4,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset(
                                    height: 161.h,
                                    width: 161.w,
                                    Urls.minimap,
                                  ),
                                ),
                              ),
                              12.widthbox,
                              Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    height: 78.h,
                                    width: 219.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      color: Colorpallets.violet,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.30),
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(Urls.call),
                                        18.21.widthbox,
                                        Text(
                                          "Call 112",
                                          style: TextStyle(
                                            fontFamily: Typo.regular,
                                            fontSize: 16,
                                          ),
                                        ),
                                        78.widthbox,
                                        SvgPicture.asset(
                                          Urls.arrow,
                                        ),
                                      ],
                                    ),
                                  ),
                                  10.heightbox,
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    height: 78.h,
                                    width: 219.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      color: Colorpallets.violet,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black
                                              .withValues(alpha: 0.30),
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(Urls.outmssg),
                                        18.21.widthbox,
                                        Text(
                                          "Emergency\nMessage",
                                          style: TextStyle(
                                            fontFamily: Typo.regular,
                                            fontSize: 16,
                                          ),
                                        ),
                                        40.widthbox,
                                        SvgPicture.asset(
                                          Urls.arrow,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        22.heightbox,
                        Text(
                          "Safety",
                          style: TextStyle(
                            fontFamily: Typo.regular,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  11.heightbox,
                  11.heightbox,
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          // autoPlayAnimationDuration: Duration(milliseconds: 400),
                          autoPlayInterval: Duration(seconds: 2),
                          viewportFraction: 1,
                          height: 80.h,
                          onPageChanged: (index, reason) {
                            selected = index;
                            setState(() {});
                          },
                        ),
                        items: [0, 1, 2].map((i) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            padding: EdgeInsets.only(left: 27.w),
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            width: 396.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21),
                              color: Colorpallets.violet,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Urls.speak),
                                21.widthbox,
                                Text(
                                  text[i],
                                  style: TextStyle(
                                      fontFamily: Typo.regular,
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      Positioned(
                        left: 198.w,
                        top: 86.h,
                        child: Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: selected == 0 ? 9.h : 9.h,
                              width: selected == 0 ? 20.w : 9.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                color: selected == 0
                                    ? Colorpallets.violet
                                    : const Color.fromARGB(255, 192, 191, 191),
                              ),
                            ),
                            7.widthbox,
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: selected == 1 ? 9.h : 9.h,
                              width: selected == 1 ? 20.w : 9.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                color: selected == 1
                                    ? Colorpallets.violet
                                    : const Color.fromARGB(255, 192, 191, 191),
                              ),
                            ),
                            7.widthbox,
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: selected == 2 ? 9.h : 9.h,
                              width: selected == 2 ? 20.w : 9.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                color: selected == 2
                                    ? Colorpallets.violet
                                    : const Color.fromARGB(255, 192, 191, 191),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  20.heightbox,
                  Container(
                    margin: EdgeInsets.only(
                      left: 17.w,
                    ),
                    height: 80.h,
                    width: 395.w,
                    decoration: BoxDecoration(
                      color: Colorpallets.violet,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Column(
                      children: [
                        16.heightbox,
                        Text(
                          'I,m Alone',
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 21.sp,
                          ),
                        ),
                        5.heightbox,
                        Text(
                          'Travelling Alone ? let your Contacts Know',
                          style: TextStyle(
                            fontFamily: Typo.regular,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
