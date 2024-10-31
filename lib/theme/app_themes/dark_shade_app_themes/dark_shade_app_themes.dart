import 'package:flavor_ferry/theme/app_colors/dark_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_themes/dark_shade_app_themes/dark_themes/dark_theme_divider.dart';
import 'package:flavor_ferry/theme/app_themes/dark_shade_app_themes/dark_themes/dark_theme_elevated_button.dart';
import 'package:flavor_ferry/theme/app_themes/dark_shade_app_themes/dark_themes/dark_theme_input_decoration.dart';
import 'package:flavor_ferry/theme/app_themes/dark_shade_app_themes/dark_themes/dark_theme_text.dart';
import 'package:flavor_ferry/theme/app_themes/dark_shade_app_themes/dark_themes/dark_theme_text_button.dart';
import 'package:flutter/material.dart';

class DarkShadeAppThemes {
  ThemeData darkThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: DarkShadeAppColors.backgroundColor,
      textTheme: DarkThemeText.textTheme(),
      inputDecorationTheme: DarkThemeInputDecoration.inputDecorationTheme(),
      elevatedButtonTheme: DarkThemeElevatedButton.elevatedButtonThemeData(),
      textButtonTheme: DarkThemeTextButton.textButtonThemeData(),
      dividerTheme: DarkThemeDivider.dividerThemeData(),
    );
  }
}
