import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/extentions/extention_on_num.dart';

class NearbysafetyPlaceScreen extends StatelessWidget {
  const NearbysafetyPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearby Safety Places"),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 570.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: nearbySafetyPlaces.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 11.h,
                      ),
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
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor:
                              Colorpallets.lightpurple.withOpacity(0.3),
                          onTap: () {},
                          child: SizedBox(
                            height: 58.h,
                            width: 385.w,
                            child: Row(
                              children: [
                                16.widthbox,
                                Icon(nearbySafetyPlacesIcons[index]),
                                16.widthbox,
                                Text(
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: Typo.regular),
                                  nearbySafetyPlaces[index],
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
            )
          ],
        ),
      ),

// body: Container(
//   child: Column(
//     children: [
//       ListView.builder(itemCount: nashikEmergencyServices.length, itemBuilder: (context,index)=>Container())
//     ],
//   ),
// ),
    );
  }
}
