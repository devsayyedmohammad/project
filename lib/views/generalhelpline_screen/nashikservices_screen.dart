import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:url_launcher/url_launcher.dart';

class NashikservicesScreen extends StatelessWidget {
  const NashikservicesScreen({super.key});

  void urlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'cant launch url ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nashik Services"),
        centerTitle: false,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: nashikservices.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.only(left: 16.w),
                  margin: EdgeInsets.only(bottom: 10.h, left: 16, right: 16),
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
                  height: 58.h,
                  width: 385.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nashikservices[index]['name']!,
                            style: TextStyle(
                                fontFamily: Typo.regular, fontSize: 12.sp),
                          ),
                          Text(
                            nashikservices[index]['phone']!,
                            style: TextStyle(
                                fontFamily: Typo.regular, fontSize: 12.sp),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                          IconButton(
                              onPressed: () {
                                urlLauncher(
                                    nashikservices[index]['googleMapUrl']!);
                              },
                              icon: Icon(Icons.directions_outlined)),
                          16.widthbox,
                        ],
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
