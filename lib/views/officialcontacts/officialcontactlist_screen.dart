import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:humansafety/views/officialcontacts/officialcontactsdetails_screen.dart';

class OfficialcontactlistScreen extends StatelessWidget {
  const OfficialcontactlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Official Contacts"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: officialContacts.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Officialcontactsdetails(
                              listindex: officialContacts[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
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
                          children: [
                            16.widthbox,
                            Text(
                              style: TextStyle(
                                  fontSize: 14.sp, fontFamily: Typo.regular),
                              officialContacts[index]['stationName']!,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //11.heightbox,
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
