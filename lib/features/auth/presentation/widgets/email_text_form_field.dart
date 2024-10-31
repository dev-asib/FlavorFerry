import 'package:flavor_ferry/core/constants/string_constants/error_strings_constants/form_error_messages.dart';
import 'package:flavor_ferry/core/constants/string_constants/login_strings.dart';
import 'package:flavor_ferry/core/utils/form_validation.dart';
import 'package:flavor_ferry/core/utils/validators.dart';
import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    final FormValidation emailValidator = FormValidation(
      emptyTextMessage: FormErrorMessages.emptyEmailMsg,
      validator: Validators.validateEmail,
    );
    return TextFormField(
      controller: emailController,
      decoration: const InputDecoration(
        hintText: LoginStrings.emailHintText,
        labelText: LoginStrings.emailLabelText,
      ),
      validator: emailValidator.formValidation,
    );
  }
}
