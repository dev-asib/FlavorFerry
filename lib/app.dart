import 'package:flavor_ferry/features/auth/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

class FlavorFerry extends StatelessWidget {
  const FlavorFerry({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
