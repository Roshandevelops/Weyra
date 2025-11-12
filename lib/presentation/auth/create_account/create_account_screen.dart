import 'package:clot/presentation/auth/details/user_details_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:clot/widgets/app_button_widget.dart';
import 'package:clot/widgets/app_textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: const Icon(
                    Iconsax.arrow_left_2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Create Account",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 32),
            const TextformFieldWidget(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              labelText: "Firstname",
              hintText: "Firstname",
            ),
            const SizedBox(height: 16),
            const TextformFieldWidget(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              labelText: "Lastname",
              hintText: "Lastname",
            ),
            const SizedBox(height: 16),
            const TextformFieldWidget(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              labelText: "Email Address",
              hintText: "Email",
            ),
            const SizedBox(height: 16),
            const TextformFieldWidget(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              labelText: "Enter Password",
              hintText: "password",
            ),
            const SizedBox(
              height: 16,
            ),
            AppButtonWidget(
              buttonText: "Continue",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserDetailsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
