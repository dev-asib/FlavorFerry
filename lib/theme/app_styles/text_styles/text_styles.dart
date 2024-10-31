import 'package:flavor_ferry/core/constants/font_size_constants/font_size_constants.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle titleLargeTextTheme({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: FontSizeConstants.titleLargeTextFontSize,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle titleMediumTextTheme({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: FontSizeConstants.titleMediumTextFontSize,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyLargeTextTheme({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: FontSizeConstants.bodyLargeTextFontSize,
      fontWeight: FontWeight.bold,
    );
  }
}
