import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:humansafety/view/contacts_screen/contacts.dart';
import 'package:humansafety/view/feature_screen/feature.dart';
import 'package:humansafety/view/home_screen/home_screen.dart';
import 'package:humansafety/view/tracking_screen/tracking.dart';

int selectedscreen = 0;

class Navbar extends StatefulWidget {
  Navbar({super.key});
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List screens = [
    HomeScreen(),
    ContactsScreen(),
    FeatureScreen(),
    TrackingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100.h,
        // color: Colors.amber,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            margin: EdgeInsets.only(bottom: 30.h),
            height: 69.h,
            width: 395.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                )
              ],
            ),
            child: Row(
              children: [
                6.widthbox,
                GestureDetector(
                  onTap: () {
                    selectedscreen = 0;
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      selectedscreen == 0
                          ? SvgPicture.asset(Urls.HomeFilled)
                          : SvgPicture.asset(Urls.HomeUnfilled),
                      3.heightbox,
                      Text(
                        "Home",
                        style: TextStyle(
                          fontFamily: Typo.medium,
                        ),
                      )
                    ],
                  ),
                ),
                40.widthbox,
                GestureDetector(
                  onTap: () {
                    selectedscreen = 1;
                    setState(() {});
                  },
                  child: SizedBox(
                    height: 69.h,
                    width: 70.w,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        selectedscreen == 1
                            ? Positioned(
                                top: 7.h,
                                left: 12.w,
                                child: SvgPicture.asset(
                                  Urls.CallFilled,
                                  height: 35.h,
                                  width: 35.w,
                                ),
                              )
                            : Positioned(
                                top: 7.h,
                                left: 12.w,
                                child: SvgPicture.asset(
                                  Urls.CallUnFilled,
                                  height: 35.h,
                                  width: 35.w,
                                ),
                              ),
                        Positioned(
                          bottom: 10.h,
                          child: Text(
                            "Contacts",
                            style: TextStyle(
                              fontFamily: Typo.medium,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                35.widthbox,
                GestureDetector(
                  onTap: () {
                    selectedscreen = 2;
                    setState(() {});
                  },
                  child: SizedBox(
                    height: 69.h,
                    width: 70.w,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        8.heightbox,
                        Positioned(
                          top: 7.h,
                          left: 12.w,
                          child: selectedscreen == 2
                              ? SizedBox(
                                  height: 35.h,
                                  width: 35.w,
                                  child: Image(
                                    image: AssetImage(Urls.featuresFill),
                                  ),
                                )
                              : SizedBox(
                                  height: 35.h,
                                  width: 35.w,
                                  child: Image(
                                    image: AssetImage(Urls.featuresUnfilled),
                                  ),
                                ),
                        ),
                        Positioned(
                          bottom: 10.h,
                          child: Text(
                            "Features",
                            style: TextStyle(
                              fontFamily: Typo.medium,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                20.widthbox,
                GestureDetector(
                  onTap: () {
                    selectedscreen = 3;
                    setState(() {});
                  },
                  child: SizedBox(
                    height: 69.h,
                    width: 40.w,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        8.heightbox,
                        Positioned(
                          top: 7.h,
                          left: 12.w,
                          child: selectedscreen == 3
                              ? SizedBox(
                                  height: 35.h,
                                  width: 35.w,
                                  child: Image(
                                    image: AssetImage(Urls.TrackingFilled),
                                  ),
                                )
                              : SizedBox(
                                  height: 35.h,
                                  width: 35.w,
                                  child: Image(
                                    image: AssetImage(Urls.TrackingUnfilled),
                                  ),
                                ),
                        ),
                        Positioned(
                          bottom: 10.h,
                          child: Text(
                            "Tracking",
                            style: TextStyle(
                              fontFamily: Typo.medium,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body:
          //  HomeScreen(),
          screens[selectedscreen],
    );
  }
}
