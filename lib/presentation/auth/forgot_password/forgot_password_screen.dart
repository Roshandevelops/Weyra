import 'package:clot/presentation/auth/reset_password/reset_password_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:clot/widgets/app_button_widget.dart';
import 'package:clot/widgets/app_textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
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
                  color: isDarkMode
                      ? KAppColors.darkFillColor
                      : KAppColors.lightFillColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Iconsax.arrow_left_2,
                  color: isDarkMode ? KAppColors.kwhite : KAppColors.kblack,
                ),
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
            border: OutlineInputBorder(borderSide: BorderSide.none),
            labelText: "Email",
            hintText: "Enter Email Address",
          ),
          const SizedBox(height: 16),
          AppButtonWidget(
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
