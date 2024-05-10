// ignore_for_file: deprecated_member_use, non_constant_identifier_names, prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:explorer/Constance/theme.dart';
import 'package:explorer/screens/sign_in_email.dart';
import 'package:explorer/screens/home.dart';
import 'screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (_) => runApp(const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  static setCustomeTheme(BuildContext context, int index) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setCustomeTheme(index);
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setCustomeTheme(int index) {
    if (index == 6) {
      setState(() {
        AppTheme.isLightTheme = true;
      });
    } else if (index == 7) {
      setState(() {
        AppTheme.isLightTheme = false;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1)).then(
      (value) => SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              AppTheme.isLightTheme ? Brightness.dark : Brightness.light,
          statusBarBrightness:
              AppTheme.isLightTheme ? Brightness.light : Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarDividerColor: Colors.grey,
          systemNavigationBarIconBrightness:
              AppTheme.isLightTheme ? Brightness.dark : Brightness.light,
        ),
      ),
    );
    return GetMaterialApp(
      scrollBehavior: const ScrollBehavior(
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
      title: "HeadLine",
      navigatorKey: NavKey.navKey,
      theme: AppTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      routes: routes,
      // home: HotelDetailsScreen(),
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.SPLASH: (BuildContext context) => SplashScreen(),
    Routes.HOME: (BuildContext context) => HomeScreen(),
    Routes.SIGNIN: (BuildContext context) => SignInScreen(),
    Routes.SIGNUP: (BuildContext context) => SignInScreen()
  };
}

class Routes {
  static String SPLASH = "/";
  static const String INTRODUCTION = "/Splash/onboarding";
  static const String HOME = "/home";
  static const String SIGNIN = "/signin";
  static const String SIGNUP = "/signup";
}

class NavKey {
  static final navKey = GlobalKey<NavigatorState>();
}
