import 'package:flutter/material.dart';

showLoaderDialog(BuildContext context) {
  AlertDialog alert = const AlertDialog(
    backgroundColor: Colors.transparent,
    content: Center(
      child: CircularProgressIndicator(),
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
