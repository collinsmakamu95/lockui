import 'package:flutter/material.dart';
import 'package:lockui/constants.dart';

class DialNumber extends StatelessWidget {
  const DialNumber(this.number, {super.key});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.dialNumberRadius * 2,
      width: Constants.dialNumberRadius * 2,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$number',
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
