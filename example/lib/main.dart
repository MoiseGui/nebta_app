import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './dashboard.dart';
// import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Dashboard(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        title: 'Welcome on NABTA',
        color: Colors.green,
        home: AnimatedSplashScreen(
            duration: 2000,
            splash: 'assets/logo.png',
            splashIconSize: 100,
            nextScreen: Dashboard(),
            splashTransition: SplashTransition.scaleTransition,
            pageTransitionType: PageTransitionType.topToBottom,
            backgroundColor: Colors.white
        )
    );
  }
}


