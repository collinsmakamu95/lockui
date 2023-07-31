import 'package:flutter/material.dart';
import 'package:lockui/constants.dart';
import 'package:lockui/widgets/dial_number.dart';

const _alignment = MainAxisAlignment.spaceEvenly;

class PasscodeInput extends StatelessWidget {
  const PasscodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < 3; i++)
          Row(
            mainAxisAlignment: _alignment,
            children: [
              for (var j = 0; j < 3; j++)
                DialNumber(Constants.inputValues[i * 3 + j]),
            ],
          ),
        DialNumber(Constants.inputValues.last),
      ],
    );
  }
}
