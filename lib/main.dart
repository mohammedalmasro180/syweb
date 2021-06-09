import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theone/screens/HomeScreen.dart';
import 'package:theone/screens/Login.dart';
import 'package:theone/screens/MainPage.dart';

import 'package:animated_splash/animated_splash.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:theone/screens/SGINUP.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset("assets/logo.jpg",width: 800,height: 800,),
        nextScreen: MyApp(),
        splashTransition: SplashTransition.scaleTransition,
        //pageTransitionType: PageTransitionType.scale,

    )
  ));
}


class MyApp extends StatelessWidget {
  static final String title = 'Native Splash Screen';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primaryColor: Colors.indigo,fontFamily: 'Lato'),
    home: HomeScreen(),
  );
}
