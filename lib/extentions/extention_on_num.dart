import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ExtentionOnNum on num {
  get heightbox => SizedBox(
        height: h,
      );
  get widthbox => SizedBox(
        width: w,
      );
}
