import 'package:flutter/material.dart';
import 'package:explorer/Constance/constance.dart';

class Selectable extends StatelessWidget {
  final String value;
  final bool selected;
  final VoidCallback? onTap;

  const Selectable(
      {required this.value, this.selected = false, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap ?? () {},
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: selected
                ? Theme.of(context).primaryColor
                : Theme.of(context).secondaryHeaderColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(28)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                selected ? ConstanceData.t8 : ConstanceData.t7,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                value,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
