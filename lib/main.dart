import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:theone/screens/Account.dart';
import 'package:theone/screens/HomeScreen.dart';
import 'package:theone/screens/Login.dart';
import 'package:theone/screens/SGINUP.dart';
import 'package:theone/screens/Unitss.dart';
import 'package:theone/screens/class_definition_card.dart';
import 'package:theone/screens/cost_center.dart';

import 'package:theone/screens/home.dart';
import 'package:theone/screens/purchase_prices.dart';
import 'package:theone/screens/salesrepresentative.dart';
import 'package:theone/screens/work_areas.dart';

import 'localization/locale_constant.dart';
import 'localization/localizations_delegate.dart';

void main() {

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

class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  }

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Neo'),
      builder: (context, child) {
        return MediaQuery(

          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      title: 'Multi Language',
      debugShowCheckedModeBanner: false,
      locale: _locale,
      home:Account(),
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
        Locale('hi', '')
      ],
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale?.languageCode == locale?.languageCode &&
              supportedLocale?.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales?.first;
      },
    );
  }
}
