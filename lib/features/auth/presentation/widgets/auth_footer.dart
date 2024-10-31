import 'package:flavor_ferry/core/constants/spacing_constants/spacing_constants.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/or_divider.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/social_media_widget.dart';
import 'package:flavor_ferry/theme/app_colors/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    required this.accountText,
    required this.actionText,
    required this.onTapActionText,
    required this.onTapFacebookIcon,
    required this.onTapGoogleIcon,
    this.forgotPasswordText,
    this.onTapForgotPassword,
  });

  final String accountText;
  final String actionText;
  final VoidCallback onTapActionText;
  final String? forgotPasswordText;
  final VoidCallback? onTapForgotPassword;
  final VoidCallback onTapFacebookIcon;
  final VoidCallback onTapGoogleIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (onTapForgotPassword != null && forgotPasswordText != null)
          _buildForgotPasswordButton(),
        SizedBox(height: SpacingConstants.smallVertical),
        const OrDivider(),
        SizedBox(height: SpacingConstants.smallVertical),
        SocialMediaWidget(
          onTapFacebookIcon: onTapFacebookIcon,
          onTapGoogleIcon: onTapGoogleIcon,
        ),
        SizedBox(height: SpacingConstants.largeVertical),
        _buildAccountSection(context),
      ],
    );
  }

  Widget _buildForgotPasswordButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onTapForgotPassword,
        child: Text(forgotPasswordText!),
      ),
    );
  }

  Widget _buildAccountSection(BuildContext context) {
    final TextTheme texTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          style: texTheme.bodyLarge,
          children: [
            TextSpan(text: "$accountText\t"),
            TextSpan(
              style: texTheme.bodyLarge?.copyWith(
                color: AppColors.themeColor,
              ),
              text: actionText,
              recognizer: TapGestureRecognizer()..onTap = onTapActionText,
            ),
          ],
        ),
      ),
    );
  }
}
