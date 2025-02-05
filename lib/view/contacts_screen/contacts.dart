import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/globals.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';

class ContactsScreen extends StatelessWidget {
  ContactsScreen({super.key});
  List<String> policeStations = [
    "Adgaon Police Station",
    "Ambad Police Station",
    "Bhadrakali Police Station",
    "Cyber Cell Police Station",
    "Deolali Police Station",
    "Gangapur Police Station",
    "Indiranagar Police Station",
    "Mhasrul Police Station",
    "Mumbai Naka Police Station",
    "Nashik Road Police Station",
    "Panchavati Police Station",
    "Sarkarwada Police Station",
    "Satpur Police Station",
    "Upnagar Police Station",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.heightbox,
            48.17.heightbox,
            Text(
              "Official Contacts",
              style: TextStyle(
                fontFamily: Typo.regular,
                fontSize: 24.sp,
              ),
            ),
            25.heightbox,
            SizedBox(
              height: 675.h,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: policeStations.length,
                itemBuilder: (context, index) => Container(
                  // margin: EdgeInsets.only(bottom: 10.h),
                  width: double.infinity,
                  height: 50.h,
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        policeStations[index],
                        style: TextStyle(
                            fontFamily: Typo.regular, fontSize: 14.sp),
                      ),
                      10.heightbox,
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: double.infinity,
                          height: 2.h,
                          color: Colorpallets.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
