import 'package:flavor_ferry/core/constants/spacing_constants/spacing_constants.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.titleText,
    required this.instructionText,
    required this.encouragementText,
  });

  final String titleText;
  final String instructionText;
  final String encouragementText;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: textTheme.titleLarge,
        ),
        SizedBox(height: SpacingConstants.titleInstructionSpacingVertical),
        Text(
          instructionText,
          style: textTheme.titleMedium,
        ),
        Text(
          encouragementText,
          style: textTheme.titleMedium,
        ),
      ],
    );
  }
}
