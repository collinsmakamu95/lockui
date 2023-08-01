import 'package:flutter/material.dart';
import 'package:lockui/utils.dart';

const _passcodeDigitPadding = 8.0;
const _passcodeDigitSizeBig = 36.0;
const _passcodeDigitSizeSmall = 24.0;
const _passcodeDigitGapBig = 16.0;
const _passcodeDigitGapSmall = 4.0;

class PasscodeDigit {
  const PasscodeDigit({
    required this.backgroundColor,
    required this.fontColor,
    this.value
  });

  final Color backgroundColor;
  final Color fontColor;
  final int? value;
}

class PasscodeDigits extends StatelessWidget {
  const PasscodeDigits({
      required this.passcodeDigitValues,
      required this.simpleInputMode,
      super.key,
  });

  final List<PasscodeDigit> passcodeDigitValues;
  final bool simpleInputMode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _passcodeDigitSizeBig,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          for (var i = 0; i < passcodeDigitValues.length; i++)
            Container(
              height: _passcodeDigitSizeBig,
              width: _passcodeDigitSizeBig,
              color: Colors.black,
            )
        ].addBetween(
          //<widget>[]
          SizedBox(
            width:
                simpleInputMode ? _passcodeDigitGapBig : _passcodeDigitGapSmall,
          ),
        ),
      ),
    );
  }
}
