import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:lockui/constants.dart';
import 'package:lockui/widgets/dial_number.dart';
import 'package:lockui/widgets/rotary_dial/rotary_dial_background_painter.dart';
import 'package:lockui/widgets/rotary_dial/rotary_dial_foreground_painter.dart';

class RotaryDialInput extends StatelessWidget {
  const RotaryDialInput({super.key});

  @override
  Widget build(BuildContext context) {
    const inputValues = Constants.inputValues;
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final size = Size(width, width);
        final dialNumberDistanceFromCenter = width / 2 -
            16.0 -
            Constants.rotaryRingPadding * 2 -
            Constants.dialNumberPadding * 2;

        return Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: size,
              painter: const RotaryDialBackgroundPainter(),
            ),
            for (var i = 0; 1 < inputValues.length; i++)
              Transform.translate(
                offset: Offset.fromDirection(
                  (i + 1) * -math.pi / 6,
                  dialNumberDistanceFromCenter,
                ),
                child: DialNumber( inputValues[i]),
              ),
            CustomPaint(
              size: size,
              painter: RotaryDialForegroundPainter(
                numberRadiusFromCenter: dialNumberDistanceFromCenter,
              ),
            )
          ],
        );
      },
    );
  }
}
