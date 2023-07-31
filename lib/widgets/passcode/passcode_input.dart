import 'package:flutter/material.dart';
import 'package:lockui/constants.dart';

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
                Text(Constants.inputValues[i * 3 + j].toString()),
            ],
          ),
        Text(Constants.inputValues.last.toString()),
      ],
    );
  }
}
