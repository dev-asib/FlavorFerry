import 'package:flavor_ferry/core/constants/radius_constants/radius_constants.dart';
import 'package:flutter/material.dart';
import 'package:flavor_ferry/core/constants/font_size_constants/form_field_font_size_constants.dart';

class InputDecorationStyle {
  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius:
          BorderRadius.circular(RadiusConstants.outlineInputBorderRadius),
    );
  }

  static TextStyle hintTextStyle({required Color hintTextColor}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: FormFieldFontSizeConstants.hintTextFontSize,
      color: hintTextColor,
    );
  }

  static TextStyle labelTextStyle({required Color labelTextColor}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: FormFieldFontSizeConstants.labelTextFontSize,
      color: labelTextColor,
    );
  }
}
