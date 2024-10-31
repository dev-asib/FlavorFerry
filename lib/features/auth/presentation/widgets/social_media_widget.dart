import 'package:flavor_ferry/core/constants/assets_paths/assets_paths.dart';
import 'package:flavor_ferry/core/constants/padding_constants/padding_constants.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/social_media_icon_widget.dart';
import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    required this.onTapFacebookIcon,
    required this.onTapGoogleIcon,
  });

  final VoidCallback onTapFacebookIcon;
  final VoidCallback onTapGoogleIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIconWidget(
          onTap: onTapFacebookIcon,
          iconPath: AssetsPaths.facebookIcon,
        ),
        const SizedBox(width: PaddingConstants.socialMediaSpacing),
        SocialMediaIconWidget(
          onTap: onTapGoogleIcon,
          iconPath: AssetsPaths.googleIcon,
        ),
      ],
    );
  }
}
