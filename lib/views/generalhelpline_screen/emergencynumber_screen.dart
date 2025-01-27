import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencynumberScreen extends StatelessWidget {
  const EmergencynumberScreen({super.key});

  Future<void> makeCall(String phoneNumber) async {
    Uri phoneno = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(phoneno)) {
      await launchUrl(phoneno);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Emergency Number",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: emergencyNames.length,
                itemBuilder: (context, index) => Column(
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
                            color:
                                Colors.black.withOpacity(0.2), // Shadow color
                            blurRadius: 10.r, // Blur effect
                            offset: Offset(5, 5), // Position offset
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              16.widthbox,
                              Text(
                                style: TextStyle(
                                    fontSize: 14.sp, fontFamily: Typo.regular),
                                emergencyNames[index],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                style: TextStyle(
                                    fontSize: 14.sp, fontFamily: Typo.regular),
                                emergencyNumbers[index],
                              ),
                              16.widthbox,
                              IconButton(
                                  onPressed: () {
                                    makeCall(
                                      emergencyNumbers[index],
                                    );
                                  },
                                  icon: Icon(Icons.call)),
                              16.widthbox,
                            ],
                          )
                        ],
                      ),
                    ),
                    11.heightbox,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
