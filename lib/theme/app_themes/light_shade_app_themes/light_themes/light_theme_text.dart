import 'package:flavor_ferry/theme/app_colors/light_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class LightThemeText {
  static TextTheme textTheme() {
    return TextTheme(
      titleLarge: TextStyles.titleLargeTextTheme(
          color: LightShadeAppColors.charcoalBlueColor),
      titleMedium:
          TextStyles.titleMediumTextTheme(color: LightShadeAppColors.greyColor),
      bodyLarge: TextStyles.bodyLargeTextTheme(
          color: LightShadeAppColors.charcoalBlueColor),
    );
  }
}
