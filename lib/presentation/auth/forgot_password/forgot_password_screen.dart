import 'package:clot/presentation/auth/reset_password/reset_password_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/widgets/app_button.dart';
import 'package:clot/widgets/textform_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 63,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: KAppColors.kFillColor, shape: BoxShape.circle),
                child: Icon(CupertinoIcons.left_chevron),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Forgot Password",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 32),
          const TextformFieldWidget(
            labelText: "Email",
            hintText: "Enter Email Address",
          ),
          const SizedBox(height: 16),
          AppButton(
            buttonText: "Continue",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ResetPasswordScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
