import 'package:flutter/material.dart';
import 'package:explorer/Constance/constance.dart';
import 'package:explorer/Constance/theme.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        ConstanceData.a1,
        height: 40,
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "User",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "email",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 10,
                  color: HexColor("#78828A"),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      )
    ]);
  }
}
