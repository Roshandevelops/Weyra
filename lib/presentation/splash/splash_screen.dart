import 'package:clot/presentation/auth/signin/signin_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToAuth(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KAppColors.primaryColor,
      body: Center(
        child: Text(
          "Weyra",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void goToAuth(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 5),
    );

    if (context.mounted) {
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const SignInScreen();
          },
        ),
      );
    }
  }
}
