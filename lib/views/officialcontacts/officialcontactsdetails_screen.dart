import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:url_launcher/url_launcher.dart';

class Officialcontactsdetails extends StatelessWidget {
  Officialcontactsdetails({super.key, required this.listindex});
  Map<String, String> listindex;
  @override
  Future<void> urlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else
      throw 'cant launc';
  }

  Future<void> makemail(String emailId) async {
    Uri emailid = Uri(scheme: 'mailto', path: emailId);
    if (await canLaunchUrl(emailid)) {
      await launchUrl(emailid);
    } else
      throw 'cannot send mail $emailId';
  }

  Future<void> makeCall(String phoneNo) async {
    Uri phoneno = Uri(scheme: 'tel', path: phoneNo);
    if (await canLaunchUrl(phoneno)) {
      await launchUrl(phoneno);
    } else
      throw 'cant launch $phoneNo';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Police Station Details"),
      ),
      body: Container(
        child: Column(
          children: [
            20.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 20.h,
                  ),
                  //  height: 161.h,
                  width: 386.w,
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              16.widthbox,
                              Text(
                                "Station Name :",
                                style: TextStyle(fontFamily: Typo.medium),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                listindex['stationName']!,
                                style: TextStyle(fontFamily: Typo.semibold),
                              ),
                              16.widthbox,
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              16.widthbox,
                              Text(
                                "Contact :",
                                style: TextStyle(fontFamily: Typo.medium),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                listindex['contact']!,
                                style: TextStyle(fontFamily: Typo.semibold),
                              ),
                              IconButton(
                                  onPressed: () {
                                    makeCall(listindex['contact']!);
                                  },
                                  icon: Icon(Icons.call)),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              16.widthbox,
                              Text(
                                "Address :",
                                style: TextStyle(fontFamily: Typo.medium),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 220.w,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  listindex['address']!,
                                  style: TextStyle(
                                      fontFamily: Typo.semibold,
                                      fontSize: 12.sp),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    urlLauncher(
                                        listindex['policeStationLocation']!);
                                  },
                                  icon: Icon(Icons.directions_outlined)),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              16.widthbox,
                              Text(
                                "Email :",
                                style: TextStyle(fontFamily: Typo.medium),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 250.w,
                                child: Text(
                                  listindex['email']!,
                                  style: TextStyle(
                                      fontFamily: Typo.regular,
                                      fontSize: 12.sp,
                                      color: Color(0xff0000ff)),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  makemail(
                                    listindex['email']!,
                                  );
                                },
                                icon: Icon(Icons.email_outlined),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
