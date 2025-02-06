import 'package:flutter/material.dart';
import 'package:humansafety/views/sos_screens/sos_screens.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = false;

  void splashh(context) async {
    await Future.delayed(Duration(milliseconds: 300), () {
      isVisible = true;
      setState(() {});
    });
    await Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SosScreens()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    splashh(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 185, 76, 252).withOpacity(0.5),
        child: AnimatedOpacity(
          opacity: isVisible ? 0 : 1,
          duration: Duration(milliseconds: 200),
          child: AnimatedContainer(
            duration: Duration(
              milliseconds: 200,
            ),
            child: Icon(
              Icons.safety_check_outlined,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
