import 'package:flavor_ferry/core/constants/font_size_constants/font_size_constants.dart';
import 'package:flavor_ferry/core/constants/radius_constants/radius_constants.dart';
import 'package:flutter/material.dart';

class ElevatedButtonStyle {
  static ButtonStyle elevatedButtonStyle({
    required Color backgroundColor,
    required Color foregroundColor,
    required Color textColor,
  }) {
    return ElevatedButton.styleFrom(
      fixedSize: const Size.fromWidth(double.maxFinite),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(RadiusConstants.elevatedButtonBorderRadius),
      ),
      textStyle: _textStyle(color: textColor),
    );
  }

  static TextStyle _textStyle({required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: FontSizeConstants.elevatedButtonTextFontSize,
      color: color,
    );
  }
}
