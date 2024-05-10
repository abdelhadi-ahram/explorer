// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, deprecated_member_use

import 'dart:io';

import 'package:explorer/widget/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';

import 'package:explorer/Constance/constance.dart';
import 'package:explorer/Constance/theme.dart';
import 'package:explorer/models/profile_model.dart';
import 'package:explorer/widget/avatar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';

class AddImage extends StatefulWidget {
  AddImage({Key? key}) : super(key: key);

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  XFile? pickedImage;

  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      // Do something with the picked image file (e.g., display it)
      setState(() {
        pickedImage = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return pickedImage != null
        ? Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.file(
              File(pickedImage!.path),
              width: 150,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                width: 150, child: MyButton(btnName: "Save it", click: () {}))
          ])
        : InkWell(
            onTap: () => {_getImageFromGallery()},
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.network(
                "https://www.pngitem.com/pimgs/m/21-217644_camera-fotografica-png-vector-transparent-png.png",
                width: 150,
              ),
              SizedBox(
                height: 15,
              ),
              Text("Capture new moment")
            ]));
  }
}
