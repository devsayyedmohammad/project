import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/controllers/textformcontroller.dart';
import 'package:humansafety/views/addtrustedcontacts/addcontact_screen.dart';
import 'package:humansafety/views/addtrustedcontacts/trustedcontact_screen.dart';
import 'package:humansafety/views/blogs/blog_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/emergencynumber_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/generalhelpline_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/importantwebsites.dart';
import 'package:humansafety/views/generalhelpline_screen/nashikservices_screen.dart';
import 'package:humansafety/views/generalhelpline_screen/tutorialemerygency_screen.dart';
import 'package:humansafety/views/officialcontacts/officialcontactlist_screen.dart';
import 'package:humansafety/views/officialcontacts/officialcontactsdetails_screen.dart';
import 'package:humansafety/views/sos_screens/sos_screens.dart';
import 'package:humansafety/views/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const HumanSafety());
}

class HumanSafety extends StatelessWidget {
  const HumanSafety({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => Textformcontroller(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OfficialcontactlistScreen(),
        ),
      ),
    );
  }
}
