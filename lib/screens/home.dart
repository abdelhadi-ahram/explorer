// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';

import 'package:explorer/Constance/constance.dart';
import 'package:explorer/Constance/theme.dart';
import 'package:explorer/models/profile_model.dart';
import 'package:explorer/widget/avatar.dart';
import 'package:latlong2/latlong.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(51.509364, -0.128928),
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.explorer.app',
              ),
              const RichAttributionWidget(
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                  ),
                ],
              ),
            ],
          )),
          Container(
            height: 70 + MediaQuery.of(context).padding.bottom,
            decoration: BoxDecoration(
              color: AppTheme.isLightTheme
                  ? Color(0xFFffffff)
                  : HexColor("#111827"),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(5.0, 5.0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Image.asset(
                        ConstanceData.c5,
                        height: 26,
                        color: index == 0
                            ? Theme.of(context).primaryColor
                            : HexColor("#b1b1ba"),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ConstanceData.c6,
                        height: 26,
                        color: index == 1
                            ? Theme.of(context).primaryColor
                            : HexColor("##b1b1ba"),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ConstanceData.c7,
                        height: 24,
                        color: index == 2
                            ? Theme.of(context).primaryColor
                            : HexColor("##b1b1ba"),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ConstanceData.c8,
                        height: 26,
                        color: index == 3
                            ? Theme.of(context).primaryColor
                            : HexColor("##b1b1ba"),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ConstanceData.c9,
                        height: 26,
                        color: index == 4
                            ? Theme.of(context).primaryColor
                            : HexColor("##b1b1ba"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
