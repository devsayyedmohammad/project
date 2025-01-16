import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ExtentionOnNum on num {
  get heightbox => SizedBox(
        height: this.h,
      );
  get widthbox => SizedBox(
        width: this.w,
      );
}
