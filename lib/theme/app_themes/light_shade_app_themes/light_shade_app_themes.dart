import 'package:flavor_ferry/theme/app_colors/light_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_themes/light_shade_app_themes/light_themes/light_theme_divider.dart';
import 'package:flavor_ferry/theme/app_themes/light_shade_app_themes/light_themes/light_theme_elevated_button.dart';
import 'package:flavor_ferry/theme/app_themes/light_shade_app_themes/light_themes/light_theme_input_decoration.dart';
import 'package:flavor_ferry/theme/app_themes/light_shade_app_themes/light_themes/light_theme_text.dart';
import 'package:flavor_ferry/theme/app_themes/light_shade_app_themes/light_themes/light_theme_text_button.dart';
import 'package:flutter/material.dart';

class LightShadeAppThemes {
  ThemeData lightThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: LightShadeAppColors.backgroundColor,
      textTheme: LightThemeText.textTheme(),
      inputDecorationTheme: LightThemeInputDecoration.inputDecorationTheme(),
      elevatedButtonTheme: LightThemeElevatedButton.elevatedButtonThemeData(),
      textButtonTheme: LightThemeTextButton.textButtonThemeData(),
      dividerTheme: LightThemeDivider.dividerThemeData(),
    );
  }
}
