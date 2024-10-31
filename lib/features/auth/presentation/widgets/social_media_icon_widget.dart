import 'package:flavor_ferry/core/constants/size_constants/size_constants.dart';
import 'package:flutter/material.dart';

class SocialMediaIconWidget extends StatelessWidget {
  const SocialMediaIconWidget({
    super.key,
    required this.onTap,
    required this.iconPath,
  });

  final VoidCallback onTap;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        iconPath,
        height: SizeConstants.socialMediaIconSize,
        width: SizeConstants.socialMediaIconSize,
      ),
    );
  }
}
