import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/views/sos_screens/sos_screens.dart';

void main() {
  runApp(const HumanSafety());
}

class HumanSafety extends StatelessWidget {
  const HumanSafety({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SosScreens(),
      ),
    );
  }
}
