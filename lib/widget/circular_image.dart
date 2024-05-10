import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  const CircularImage(
      {required this.url, this.width = 40, this.height = 40, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
