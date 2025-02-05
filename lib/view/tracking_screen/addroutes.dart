import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:humansafety/consts/colorpallets.dart';
import 'package:humansafety/consts/globals.dart';
import 'package:humansafety/consts/typo.dart';
import 'package:humansafety/consts/urls.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:humansafety/view/navbar_screen/navbar.dart';
import 'package:humansafety/view/tracking_screen/tracking.dart';

class Addroutes extends StatelessWidget {
  const Addroutes({super.key});

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
                  "Edit Routes",
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
                    children: [
                      swipeButton(),
                      17.heightbox,
                      swipeButton(),
                    ],
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
                              router.goNamed(Routes.navbar.name);
                            },
                            child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  Urls.ticked,
                                  height: 24.59,
                                  width: 24.59,
                                  color: Colorpallets.white,
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
}

Stack swipeButton({from, to}) {
  return Stack(
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
                color: Colorpallets.black.withOpacity(
                  0.3,
                ),
                blurRadius: 13,
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
                color: Colorpallets.black.withOpacity(
                  0.3,
                ),
                blurRadius: 13,
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
                color: Colorpallets.black.withOpacity(
                  0.3,
                ),
                blurRadius: 13,
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
        top: 72.h,
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
              '$from ',
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
              '$to',
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
              duration: Duration.zero,
              height: 42.h,
              width: 42.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colorpallets.white,
              ),
              child: Center(
                child: SvgPicture.asset(
                  Urls.rotationIcon,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
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
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 13); // Blur effect

    // Offset the shadow for a realistic effect
    canvas.save();
    canvas.translate(5, 5); // Adjust the shadow offset
    canvas.drawPath(path, shadowPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
