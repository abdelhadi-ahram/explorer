// ignore_for_file: file_names, override_on_non_overriding_member, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:explorer/Constance/theme.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final Widget suffixIcon;
  final bool hideTextfild;
  final String? initialValue;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  final VoidCallback? click;

  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.suffixIcon,
      this.initialValue,
      this.hideTextfild = false,
      this.controller,
      this.click,
      this.onChanged});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color:
            AppTheme.isLightTheme ? HexColor("#F6F8FE") : HexColor("#1F2937"),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: TextFormField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            onTap: widget.click,
            initialValue: widget.initialValue,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon,
              contentPadding: const EdgeInsets.only(left: 14, top: 12),
            ),
          ),
        ),
      ),
    );
  }
}
