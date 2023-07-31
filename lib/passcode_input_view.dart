import 'package:flutter/material.dart';

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
              const Expanded(child: Placeholder())
            ],
          ),
        ),
      ),
    );
  }
}
