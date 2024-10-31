import 'package:flavor_ferry/core/constants/width_constants/width_constants.dart';
import 'package:flavor_ferry/theme/app_colors/dark_shade_app_colors.dart';
import 'package:flutter/material.dart';

class DarkThemeDivider {
  static DividerThemeData dividerThemeData() {
    return const DividerThemeData(
      thickness: WidthConstants.dividerWidth,
      color: DarkShadeAppColors.dividerColor,
    );
  }
}
