import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:url_launcher/url_launcher.dart';

class Importantwebsites extends StatelessWidget {
  Importantwebsites({super.key});
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Important Website"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: importantWebsiteName.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => launchURL(importantWebsiteUrl[index]),
                  child: Container(
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
                              importantWebsiteName[index],
                              style: TextStyle(
                                  fontFamily: Typo.regular, fontSize: 12.sp),
                            ),
                            Text(
                              importantWebsiteUrl[index],
                              style: TextStyle(
                                  fontFamily: Typo.regular,
                                  fontSize: 12.sp,
                                  color: Colorpallets.urlcolor),
                            ),
                          ],
                        ),
                      ],
                    ),
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
