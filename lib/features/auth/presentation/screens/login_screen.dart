import 'package:flavor_ferry/core/constants/string_constants/login_strings.dart';
import 'package:flavor_ferry/core/utils/size_config.dart';
import 'package:flavor_ferry/features/auth/application/auth_controllers/login_controller.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/auth_footer.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/auth_header.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/login_form.dart';
import 'package:flavor_ferry/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.12),
                const AuthHeader(
                  titleText: LoginStrings.headerTitle,
                  instructionText: LoginStrings.headerInstruction,
                  encouragementText: LoginStrings.headerEncouragement,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.03),
                LoginForm(loginController: _loginController),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                CustomButton(
                  buttonText: LoginStrings.loginButtonText,
                  onTap: _onTapLoginButton,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                AuthFooter(
                  accountText: LoginStrings.accountText,
                  actionText: LoginStrings.actionText,
                  forgotPasswordText: LoginStrings.forgotPasswordText,
                  onTapActionText: _onTapActionText,
                  onTapFacebookIcon: _onTapFacebookIcon,
                  onTapGoogleIcon: _onTapGoogleIcon,
                  onTapForgotPassword: _onTapForgotPassword,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLoginButton() {}

  void _onTapActionText() {}

  void _onTapFacebookIcon() {}

  void _onTapGoogleIcon() {}

  void _onTapForgotPassword() {}
}
