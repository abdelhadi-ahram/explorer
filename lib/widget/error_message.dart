import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  final double marginTop;
  final double marginBottom;
  final double marginLeft;
  final double marginRight;

  const ErrorMessage(
      {required this.message,
      this.marginBottom = 0,
      this.marginTop = 0,
      this.marginLeft = 0,
      this.marginRight = 0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      child: Container(
        width: double.infinity,
        height: 70,
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
        ),
        decoration: BoxDecoration(
          color: const Color(0xfffecaca),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromARGB(255, 244, 96, 96),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.close,
                color: Color(0xFFF87171),
                size: 24,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(message,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: const Color.fromARGB(255, 46, 43, 43))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
