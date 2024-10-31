import 'package:flavor_ferry/core/utils/size_config.dart';
import 'package:flavor_ferry/features/auth/application/auth_controllers/login_controller.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required LoginController loginController,
  }) : _loginController = loginController;

  final LoginController _loginController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginController.formKey,
      child: Column(
        children: [
          EmailTextFormField(emailController: _loginController.emailController),
          SizedBox(height: SizeConfig.screenHeight! * 0.01),
          PasswordTextFormField(
              passwordController: _loginController.passwordController)
        ],
      ),
    );
  }
}
