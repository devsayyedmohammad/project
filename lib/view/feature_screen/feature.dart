import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';

class FeatureScreen extends StatelessWidget {
  FeatureScreen({super.key});
  List Features = [
    'Emergency Number',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More Features",
          style: TextStyle(fontFamily: Typo.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20.h),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 58.h,
              width: 385.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colorpallets.lightpurple),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10.r, // Blur effect
                    offset: Offset(5, 5), // Position offset
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    SvgPicture.asset(Urls.Emergency),
                    19.widthbox,
                    Text(
                      "Emergency Number",
                      style: TextStyle(fontFamily: Typo.regular, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            11.heightbox,
            Container(
              height: 58.h,
              width: 385.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colorpallets.lightpurple),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10.r, // Blur effect
                    offset: Offset(5, 5), // Position offset
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Urls.web,
                      height: 21.h,
                      width: 19.w,
                    ),
                    19.widthbox,
                    Text(
                      "Important Websites",
                      style: TextStyle(
                          fontFamily: Typo.regular,
                          fontSize:
                              17), //Nashik Services // General Helpline //Nearby Safety Places
                    ),
                  ],
                ),
              ),
            ),
            11.heightbox,
            Container(
              height: 58.h,
              width: 385.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colorpallets.lightpurple),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10.r, // Blur effect
                    offset: Offset(5, 5), // Position offset
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Urls.web,
                      height: 21.h,
                      width: 19.w,
                    ),
                    19.widthbox,
                    Text(
                      "Nashik Services",
                      style: TextStyle(
                          fontFamily: Typo.regular,
                          fontSize: 17), // //  //Nearby Safety Places
                    ),
                  ],
                ),
              ),
            ),
            11.heightbox,
            Container(
              height: 58.h,
              width: 385.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colorpallets.lightpurple),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10.r, // Blur effect
                    offset: Offset(5, 5), // Position offset
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Urls.web,
                      height: 21.h,
                      width: 19.w,
                    ),
                    19.widthbox,
                    Text(
                      "General Helpline",
                      style: TextStyle(
                          fontFamily: Typo.regular,
                          fontSize:
                              17), //Nashik Services // General Helpline //Nearby Safety Places
                    ),
                  ],
                ),
              ),
            ),
            11.heightbox,
            Container(
              height: 58.h,
              width: 385.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colorpallets.lightpurple),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10.r, // Blur effect
                    offset: Offset(5, 5), // Position offset
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Urls.web,
                      height: 21.h,
                      width: 19.w,
                    ),
                    19.widthbox,
                    Text(
                      "Nearby Safety Places",
                      style: TextStyle(
                          fontFamily: Typo.regular,
                          fontSize:
                              17), //Nashik Services // General Helpline //
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
