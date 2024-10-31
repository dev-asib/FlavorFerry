import 'package:flavor_ferry/theme/app_colors/dark_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class DarkThemeText {
  static TextTheme textTheme() {
    return TextTheme(
      titleLarge:
          TextStyles.titleLargeTextTheme(color: DarkShadeAppColors.whiteColor),
      titleMedium:
          TextStyles.titleMediumTextTheme(color: DarkShadeAppColors.greyColor),
      bodyLarge:
          TextStyles.bodyLargeTextTheme(color: DarkShadeAppColors.whiteColor),
    );
  }
}
