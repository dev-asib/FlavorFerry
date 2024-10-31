import 'package:flavor_ferry/core/routes/app_routes.dart';
import 'package:flavor_ferry/core/routes/routes_names.dart';
import 'package:flavor_ferry/core/utils/size_config.dart';
import 'package:flavor_ferry/theme/app_themes/dark_shade_app_themes/dark_shade_app_themes.dart';
import 'package:flavor_ferry/theme/app_themes/light_shade_app_themes/light_shade_app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlavorFerry extends StatelessWidget {
  const FlavorFerry({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  GetMaterialApp(
      initialRoute: RoutesNames.loginScreen,
      getPages: AppRoutes.appRoutes(),
      theme: LightShadeAppThemes().lightThemeData(),
      darkTheme: DarkShadeAppThemes().darkThemeData(),
      themeMode: ThemeMode.system,
    );
  }
}
