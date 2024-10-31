import 'package:flavor_ferry/core/constants/string_constants/error_strings_constants/form_error_messages.dart';
import 'package:flavor_ferry/core/utils/regex.dart';

class Validators {
  static String? validateEmail(String email) {
    if (!RegexPattern.emailRegExp.hasMatch(email)) {
      return FormErrorMessages.invalidEmailMsg;
    }
    return null;
  }

  static String? validatePassword(String password) {
    if (!RegexPattern.passwordRegExp.hasMatch(password)) {
      return FormErrorMessages.invalidPasswordMsg;
    }
    return null;
  }
}
