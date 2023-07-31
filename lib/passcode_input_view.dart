import 'package:flutter/material.dart';
import 'package:lockui/widgets/input_mode_button.dart';
import 'package:lockui/widgets/passcode/passcode_digits.dart';
import 'package:lockui/widgets/passcode/passcode_input.dart';
import 'package:lockui/widgets/rotary_dial/rotary_dial_input.dart';

const _padding = 16.0;

class PasscodeIputView extends StatefulWidget {
  const PasscodeIputView({
    required this.expectedCode,
    super.key,
  });
  final String expectedCode;

  @override
  State<PasscodeIputView> createState() => _PasscodeIputViewState();
}

class _PasscodeIputViewState extends State<PasscodeIputView> {
  late final List<PasscodeDigit> _passcodeDigitvalues;
  var _simpleInputMode = false;

  @override
  void initState() {
    super.initState();
    _passcodeDigitvalues = List.generate(
      widget.expectedCode.length,
      (index) => const PasscodeDigit(
        backgroundColor: Colors.white,
        fontColor: Colors.white,
      ),
      growable: false,
    );
  }

  void _onModeChanged() => setState(() => _simpleInputMode = !_simpleInputMode);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
              _padding, _padding * 3, _padding, _padding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Enter\npasscode'.toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 32.0),
              Align(
                alignment:
                    _simpleInputMode ? Alignment.center : Alignment.centerRight,
                child: PasscodeDigits(
                  passcodeDigitValues: _passcodeDigitvalues,
                  simpleInputMode: _simpleInputMode,
                ),
              ),
              Expanded(
                child: _simpleInputMode
                    ? const PasscodeInput()
                    : const RotaryDialInput(),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InputModeButton(
                  simpleInputMode: _simpleInputMode,
                  onModeChanged: _onModeChanged,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
