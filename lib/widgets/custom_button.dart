import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.buttonWidth = double.maxFinite,
    this.buttonHeight = 40,
  });

  final String buttonText;
  final VoidCallback onTap;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(buttonText),
      ),
    );
  }
}
