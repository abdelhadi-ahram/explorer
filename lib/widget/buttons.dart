// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback click;
  final bool isLoading;
  final bool filled;
  final Color? backgroundColor;
  final Color? textColor;

  const MyButton(
      {super.key,
      required this.btnName,
      required this.click,
      this.backgroundColor,
      this.textColor,
      this.filled = true,
      this.isLoading = false});

  Color getBackgroundColor(context) {
    return filled
        ? backgroundColor ?? Theme.of(context).primaryColor
        : Colors.transparent;
  }

  Color getColor(context) {
    return filled ? Colors.white : textColor ?? Theme.of(context).primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? () => {} : click,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: getBackgroundColor(context),
          borderRadius: BorderRadius.all(Radius.circular(28)),
        ),
        child: Center(
          child: isLoading == true
              ? Padding(
                  padding: EdgeInsets.all(15),
                  child: CircularProgressIndicator(color: getColor(context)))
              : Text(
                  btnName,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: getColor(context)),
                ),
        ),
      ),
    );
  }
}
