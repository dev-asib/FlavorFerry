import 'package:flavor_ferry/core/utils/size_config.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/or_divider.dart';
import 'package:flavor_ferry/features/auth/presentation/widgets/social_media_widget.dart';
import 'package:flavor_ferry/theme/app_colors/dark_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_colors/light_shade_app_colors.dart';
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
        if (onTapForgotPassword != null) _buildForgotPasswordButton(),
        SizedBox(height: SizeConfig.screenHeight! * 0.02),
        const OrDivider(),
        SizedBox(height: SizeConfig.screenHeight! * 0.02),
        SocialMediaWidget(
          onTapFacebookIcon: onTapFacebookIcon,
          onTapGoogleIcon: onTapGoogleIcon,
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
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
    final bool isBrightness = Theme.of(context).brightness == Brightness.light;
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          style: texTheme.bodyLarge?.copyWith(
            color: isBrightness
                ? LightShadeAppColors.accountTextColor
                : DarkShadeAppColors.accountTextColor,
          ),
          children: [
            TextSpan(text: "$accountText\t"),
            TextSpan(
              style: texTheme.bodyLarge?.copyWith(
                color: isBrightness
                    ? LightShadeAppColors.actionTextColor
                    : DarkShadeAppColors.actionTextColor,
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
