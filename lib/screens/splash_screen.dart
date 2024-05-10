// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_new, library_private_types_in_public_api, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:explorer/Constance/constance.dart';
import 'package:explorer/main.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // _loadNextScreen();
    _initAll();
  }

  _initAll() async {
    await Future.wait([Future.delayed(Duration(milliseconds: 2000))]);
    Navigator.pushReplacementNamed(context, Routes.SIGNIN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(children: [
            Image.asset(
              ConstanceData.logo,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "explorer",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ])),
        ],
      ),
    );
  }
}
