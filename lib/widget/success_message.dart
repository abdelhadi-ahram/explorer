import 'package:flutter/material.dart';
import 'package:explorer/Constance/theme.dart';

class SuccessMessage extends StatelessWidget {
  final String message;
  final double marginTop;
  final double marginBottom;

  const SuccessMessage(
      {required this.message,
      this.marginBottom = 0,
      this.marginTop = 0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: marginTop),
        Container(
          width: double.infinity,
          height: 70,
          constraints: const BoxConstraints(
            maxWidth: double.infinity,
          ),
          decoration: BoxDecoration(
            color: HexColor("#bbf7d0"),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: HexColor("#86efac"),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.check,
                  color: HexColor("#22c55e"),
                  size: 24,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(message,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color.fromARGB(255, 46, 43, 43))),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: marginBottom)
      ],
    );
  }
}
