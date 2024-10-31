import 'package:flavor_ferry/core/constants/height_constants/height_constants.dart';
import 'package:flutter/material.dart';

class ExpandedDivider extends StatelessWidget {
  const ExpandedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(height: HeightConstants.dividerHeight),
    );
  }
}
