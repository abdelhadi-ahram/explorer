// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, deprecated_member_use, file_names

import 'package:explorer/main.dart';
import 'package:flutter/material.dart';
import 'package:explorer/Constance/constance.dart';
import 'package:explorer/widget/buttons.dart';
import 'package:explorer/widget/custom_text_field.dart';
import 'package:explorer/widget/error_message.dart';

import '../Constance/theme.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: MediaQuery.of(context).padding.top + 30,
            bottom: MediaQuery.of(context).padding.bottom + 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    AppTheme.isLightTheme
                        ? ConstanceData.h1
                        : ConstanceData.dh1,
                    height: 40,
                  ),
                ),
                Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            if (error.isNotEmpty)
              ErrorMessage(
                message: error,
                marginBottom: 15,
              ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Row(
                    children: [
                      Text(
                        "Email Address",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#78828A"),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: emailController,
                    hintText: "Enter your email address",
                    suffixIcon: SizedBox(),
                    click: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#78828A"),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: "Enter your password",
                    controller: passwordController,
                    click: () {},
                    suffixIcon: IconButton(
                      icon: AppTheme.isLightTheme
                          ? Image.asset(
                              ConstanceData.h2,
                              height: 25,
                            )
                          : Image.asset(
                              ConstanceData.h2,
                              height: 25,
                            ),
                      onPressed: () {},
                    ),
                    // click: click
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Text(
                          "Forgot Password?",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#6b7280"),
                                  ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    btnName: "Sign In",
                    click: () {
                      print("Hello");
                      Navigator.pushReplacementNamed(context, Routes.HOME);
                    },
                    isLoading: isLoading,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont’s have an account? ",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.isLightTheme
                                  ? HexColor("#78828A")
                                  : Colors.white,
                            ),
                      ),
                      InkWell(
                        child: Text(
                          " Sign up",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
