import 'package:flavor_ferry/core/constants/string_constants/error_strings_constants/form_error_messages.dart';
import 'package:flavor_ferry/core/constants/string_constants/login_strings.dart';
import 'package:flavor_ferry/core/utils/form_validation.dart';
import 'package:flavor_ferry/core/utils/validators.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    final FormValidation passwordValidator = FormValidation(
      emptyTextMessage: FormErrorMessages.emptyPasswordMsg,
      validator: Validators.validatePassword,
    );
    return TextFormField(
      controller: passwordController,
      decoration: const InputDecoration(
        hintText: LoginStrings.passwordHintText,
        labelText: LoginStrings.passwordLabelText,
      ),
      validator: passwordValidator.formValidation,
    );
  }
}
