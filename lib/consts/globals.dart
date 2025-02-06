import 'package:go_router/go_router.dart';
import 'package:humansafety/view/choicemap/choicemap.dart';
import 'package:humansafety/view/emergency_screen/emergencymessage.dart';
import 'package:humansafety/view/emergency_screen/successed_screen.dart';
import 'package:humansafety/view/navbar_screen/navbar.dart';
import 'package:humansafety/view/tracking_screen/addroutes.dart';
import 'package:humansafety/view/tracking_screen/tracking.dart';

enum Routes {
  navbar,
  emergencyscreen,
  succesedsendscreen,
  tracking,
  edittracking,
  choicermap,
}

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: Routes.navbar.name,
      builder: (context, state) => Navbar(),
    ),
    GoRoute(
      path: "/first",
      name: Routes.emergencyscreen.name,
      builder: (context, state) => Emergencymessage(),
    ),
    GoRoute(
      path: "/second",
      name: Routes.succesedsendscreen.name,
      builder: (context, state) => SuccessedScreen(),
    ),
    GoRoute(
      path: "/tracking",
      name: Routes.tracking.name,
      builder: (context, state) => TrackingScreen(),
    ),
    GoRoute(
      path: "/edittracking",
      name: Routes.edittracking.name,
      builder: (context, state) => Addroutes(),
    ),
    GoRoute(
      path: "/choicermap",
      name: Routes.choicermap.name,
      builder: (context, state) => Choicemap(),
    ),
  ],
);
