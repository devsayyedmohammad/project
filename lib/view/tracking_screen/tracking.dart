import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/globals.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';

class Fromto {
  String? from;
  String? to;
  Fromto({this.from, this.to});
  double? rotate = 0.0;
  double? rotated = 180.00;
  double? actual = 0.0;
  int counter = 1;
  swap() {
    String temp = from!;
    from = to;
    to = temp;
    counter++;
    if (counter % 2 == 0) {
      actual = rotated;
    } else {
      actual = rotate;
    }
  }
}

List<Fromto> Dailyroutes = [
  Fromto(from: "Collage", to: "Home"),
  Fromto(from: "Home", to: "Class"),
  Fromto(from: "Home", to: "Market"),
];

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

bool tapped = false;

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        width: double.infinity,
        child: Column(
          children: [
            113.heightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Daily Routes",
                  style: TextStyle(
                    fontFamily: Typo.bold,
                    fontSize: 24.sp,
                  ),
                ),
                SvgPicture.asset(
                  Urls.edit,
                  height: 23.h,
                  width: 23.w,
                )
              ],
            ),
            41.heightbox,
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: List.generate(
                      Dailyroutes.length,
                      (index) => swipeButton(
                        Dailyroutes[index],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 570.h,
                    left: 325.w,
                    child: Center(
                      child: Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colorpallets.purple,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30.r),
                            onTap: () {
                              router.goNamed(Routes.choicermap.name);
                            },
                            child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  Urls.plus,
                                  height: 26.59,
                                  width: 26.59,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double rotateangle = 0.0;
  swipeButton(Fromto data) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: const Size(396, 94),
            painter: ShadowPainter(),
          ),
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: 396,
              height: 94,
              color: Colorpallets.white,
            ),
          ),
          Positioned(
            top: 77.h,
            left: 322.w,
            child: Container(
              height: 14.h,
              width: 14.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colorpallets.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colorpallets.black.withOpacity(
                      0.3,
                    ),
                    blurRadius: 7,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 77.h,
            left: 343.w,
            child: Container(
              height: 14.h,
              width: 14.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colorpallets.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colorpallets.black.withOpacity(
                      0.3,
                    ),
                    blurRadius: 7,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 77.h,
            left: 364.w,
            child: Container(
              height: 14.h,
              width: 14.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colorpallets.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colorpallets.black.withOpacity(
                      0.3,
                    ),
                    blurRadius: 7,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 2.h,
            left: 2.w,
            child: SvgPicture.asset(
              Urls.purpalarrow,
              height: 26.h,
              width: 129.w,
            ),
          ),
          Positioned(
            top: 68.h,
            left: 22.w,
            child: Text(
              "Swipe To Start",
              style: TextStyle(
                fontFamily: Typo.bold,
                fontSize: 12.sp,
                color: Colorpallets.swipe,
              ),
            ),
          ),
          Positioned(
            top: 35.h,
            left: 43.w,
            child: Row(
              children: [
                Text(
                  "${data.from!} ",
                  style: TextStyle(
                    fontFamily: Typo.bold,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  'To ',
                  style: TextStyle(
                    fontFamily: Typo.bold,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  "${data.to!} ",
                  style: TextStyle(
                    fontFamily: Typo.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 322.w,
            top: 13.h,
            child: Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colorpallets.circlerotate,
              ),
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 42.h,
                  width: 42.w,
                  transformAlignment: Alignment.center,
                  transform: Matrix4.rotationZ(data.actual!),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colorpallets.white,
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        data.swap();

                        setState(() {});
                      },
                      child: SvgPicture.asset(
                        Urls.rotationIcon,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 396;
    final double _yScaling = size.height / 94;
    path.lineTo(0 * _xScaling, 21 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      9.40202 * _yScaling,
      9.40202 * _xScaling,
      0 * _yScaling,
      21 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      21 * _xScaling,
      0 * _yScaling,
      375 * _xScaling,
      0 * _yScaling,
      375 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      386.598 * _xScaling,
      0 * _yScaling,
      396 * _xScaling,
      9.40202 * _yScaling,
      396 * _xScaling,
      21 * _yScaling,
    );
    path.cubicTo(
      396 * _xScaling,
      21 * _yScaling,
      396 * _xScaling,
      78 * _yScaling,
      396 * _xScaling,
      78 * _yScaling,
    );
    path.cubicTo(
      396 * _xScaling,
      78 * _yScaling,
      339.297 * _xScaling,
      78 * _yScaling,
      339.297 * _xScaling,
      78 * _yScaling,
    );
    path.cubicTo(
      334.902 * _xScaling,
      78 * _yScaling,
      330.643 * _xScaling,
      79.5237 * _yScaling,
      327.245 * _xScaling,
      82.3116 * _yScaling,
    );
    path.cubicTo(
      327.245 * _xScaling,
      82.3116 * _yScaling,
      313 * _xScaling,
      94 * _yScaling,
      313 * _xScaling,
      94 * _yScaling,
    );
    path.cubicTo(
      210.654 * _xScaling,
      94 * _yScaling,
      72.7828 * _xScaling,
      94 * _yScaling,
      20.9007 * _xScaling,
      94 * _yScaling,
    );
    path.cubicTo(
      9.30277 * _xScaling,
      94 * _yScaling,
      0 * _xScaling,
      84.598 * _yScaling,
      0 * _xScaling,
      73 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      73 * _yScaling,
      0 * _xScaling,
      21 * _yScaling,
      0 * _xScaling,
      21 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      21 * _yScaling,
      0 * _xScaling,
      21 * _yScaling,
      0 * _xScaling,
      21 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = MyClipper().getClip(size);

    // Draw the shadow
    final Paint shadowPaint = Paint()
      ..color = Colorpallets.black.withOpacity(0.3) // Shadow color and opacity
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 7); // Blur effect

    // Offset the shadow for a realistic effect
    canvas.save();
    canvas.translate(5, 5); // Adjust the shadow offset
    canvas.drawPath(path, shadowPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
