class FormValidation {
  final String emptyTextMessage;
  final String? Function(String) validator;

  FormValidation({
    required this.emptyTextMessage,
    required this.validator,
  });

  String? formValidation(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return emptyTextMessage;
    }
    return validator(value!.trim());
  }
}
