import 'package:flavor_ferry/core/constants/padding_constants/padding_constants.dart';
import 'package:flavor_ferry/core/constants/string_constants/string_constants.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/expanded_divider.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ExpandedDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingConstants.orDividerHorizontalPadding,
          ),
          child: Text(
            StringConstants.orText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const ExpandedDivider()
      ],
    );
  }
}
