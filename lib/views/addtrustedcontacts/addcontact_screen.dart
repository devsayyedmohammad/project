import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/controllers/textformcontroller.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:humansafety/views/addtrustedcontacts/trustedcontact_screen.dart';
import 'package:provider/provider.dart';

class AddcontactScreen extends StatelessWidget {
  AddcontactScreen({super.key});

  Textformcontroller? controller;

  @override
  Widget build(BuildContext context) {
    controller = Provider.of<Textformcontroller>(context, listen: false);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            200.heightbox,
            Container(
              height: 500,
              width: 400,
              padding: EdgeInsets.all(20),
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
                  Text(
                    "Enter following details",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  20.heightbox,
                  Row(
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  20.heightbox,
                  TextFormField(
                    controller: controller!.controller1,
                    decoration: InputDecoration(
                        hintText: "Type here Name",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                        border: OutlineInputBorder()),
                  ),
                  20.heightbox,
                  Row(
                    children: [
                      Text(
                        "Phone",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  20.heightbox,
                  TextFormField(
                    maxLength: 10,
                    controller: controller!.controller2,
                    buildCounter: (context,
                            {required currentLength,
                            required isFocused,
                            required maxLength}) =>
                        null,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 12),
                          child: Text(
                            "+91 ",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                        hintText: "Type here Number",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                        border: OutlineInputBorder()),
                  ),
                  100.heightbox,
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrustedcontactScreen()));
                      controller!.saveData();
                    },
                    child: Container(
                      height: 50,
                      width: 300,
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
                      child: Center(
                          child: Text(
                        "Save Contact",
                        style: TextStyle(
                            fontFamily: Typo.semibold, fontSize: 18.sp),
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
