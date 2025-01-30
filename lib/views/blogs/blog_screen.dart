import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/consts/typo.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Blogs"),
      ),
      body: Container(
        margin: EdgeInsets.only(right: 20.w, left: 20.w),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 800,
              child: ListView.builder(
                itemCount: safetyTips.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 10.h),
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
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.all(16),
                    expandedAlignment: Alignment.center,
                    title: Text(
                      safetyTips[index]['question']!,
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 16.sp),
                    ),
                    children: [
                      Text(
                        safetyTips[index]['answer']!,
                        style: TextStyle(
                            fontFamily: Typo.regular, fontSize: 14.sp),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
