import 'package:flavor_ferry/core/routes/routes_names.dart';
import 'package:flavor_ferry/features/auth/application/auth_bindings/login_bindings.dart';
import 'package:flavor_ferry/features/auth/presentation/screens/login_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage<dynamic>> appRoutes() {
    return [
      GetPage(
        name: RoutesNames.loginScreen,
        page: () => const LoginScreen(),
        binding: LoginBindings(),
      ),
    ];
  }
}
