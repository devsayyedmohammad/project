import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/consts/global.dart';
import 'package:humansafety/views/generalhelpline_screen/emergencynumber_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/generalhelpline_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/importantwebsites.dart';
import 'package:humansafety/views/generalhelpline_screen/nashikservices_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/nearbysafety_place_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/tutorialemerygency_screen.dart';
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
        home: TutorialemerygencyScreen(),
      ),
    );
  }
}
