import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/globals.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';

class SuccessedScreen extends StatelessWidget {
  SuccessedScreen({super.key});
  List<String> names = [
    "Liam Anderson",
    "Emma Johnson",
    "Noah Smith",
    "Olivia Brown",
    "William Davis",
    "Ava Martinez",
    "James Garcia",
    "Sophia Miller",
    "Benjamin Wilson",
    "Isabella Taylor",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //Massage Has Send Succesfully
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
        40.heightbox,
        Row(
          children: [
            24.widthbox,
            Text(
              "Massage Has Send \nSuccesfully ",
              style: TextStyle(fontFamily: Typo.regular, fontSize: 24.sp),
            ),
          ],
        ),
        55.heightbox,
        Container(
          margin: EdgeInsets.symmetric(horizontal: 92.w),
          height: 246.h,
          width: 246.w,
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   gradient: Colorpallets.tickMark,
          // ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 246.h,
                width: 246.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: Colorpallets.tickMark,
                ),
              ),
              Container(
                height: 240.h,
                width: 240.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: Colorpallets.tickMark2,
                ),
              ),
              Container(
                height: 234.h,
                width: 234.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        Urls.innershadow,
                      ),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  10.heightbox,
                  SvgPicture.asset(
                    Urls.ticked,
                    height: 63.h,
                    width: 86.w,
                  ),
                  17.heightbox,
                  Text(
                    textAlign: TextAlign.center,
                    'Massage Published\nTo :',
                    style: TextStyle(
                        fontFamily: Typo.semibold,
                        fontSize: 15.sp,
                        color: Colorpallets.ticktext),
                  )
                ],
              )
            ],
          ),
        ),
        34.heightbox,
        Container(
          width: double.infinity,
          height: 383.h,
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          child: Center(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: names.length,
              itemBuilder: (context, index) => Center(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 12.64.h,
                  ),
                  height: 57.36.h,
                  width: 384.73.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: Colorpallets.violet,
                  ),
                  child: Center(
                    child: Container(
                      height: 45.00.h,
                      width: 368.74.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(41.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 300.w,
                            child: Row(
                              children: [
                                3.widthbox,
                                CircleAvatar(
                                  backgroundColor: Colorpallets.profile,
                                  radius: 21.r,
                                ),
                                9.widthbox,
                                Text(
                                  names[index],
                                  style: TextStyle(
                                      fontFamily: Typo.regular,
                                      fontSize: 15.sp,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                Urls.sendmssg,
                                height: 27.h,
                                width: 27.w,
                              ),
                              10.25.widthbox,
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
