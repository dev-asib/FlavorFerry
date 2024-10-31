import 'package:flavor_ferry/core/constants/font_size_constants/font_size_constants.dart';
import 'package:flutter/material.dart';

class TextButtonStyle {
  static ButtonStyle textButtonStyle({
    required Color foregroundColor,
    required Color textColor,
  }) {
    return TextButton.styleFrom(
      foregroundColor: foregroundColor,
      textStyle: _textStyle(color: textColor),
    );
  }

  static TextStyle _textStyle({required color}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: FontSizeConstants.textButtonTextFontSize,
      color: color,
    );
  }
}
