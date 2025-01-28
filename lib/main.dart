import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/views/generalhelpline_screen/generalhelpline_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/tutorialemerygency_screen.dart';

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
        home: GeneralhelplineScreen(),
      ),
    );
  }
}
