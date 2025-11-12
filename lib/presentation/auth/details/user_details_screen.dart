import 'package:clot/presentation/auth/signin/signin_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:clot/widgets/app_button_widget.dart';
import 'package:clot/widgets/app_dropdown_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  bool isMenSelected = true;
  final ageRanges = ["18-24", "25-34", "35-44", "45-60", "60 & Above"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      // showAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 161),
              const Text(
                "Tell us About yourself",
                style: TextStyle(
                  fontFamily: "Gabarito",
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 49),
              Text(
                "Who do you shop for ?",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: AppButtonWidget(
                        backgroundColor: isMenSelected
                            ? KAppColors.primaryColor
                            : (isDarkMode
                                ? KAppColors.darkFillColor
                                : KAppColors.lightFillColor),
                        buttonText: "Men",
                        textColor: isMenSelected
                            ? KAppColors.kwhite
                            : isDarkMode
                                ? KAppColors.kwhite
                                : KAppColors.kblack,
                        onTap: () {
                          setState(() {
                            isMenSelected = true;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: SizedBox(
                      child: AppButtonWidget(
                        backgroundColor: !isMenSelected
                            ? KAppColors.primaryColor
                            : (isDarkMode
                                ? KAppColors.darkFillColor
                                : KAppColors.lightFillColor),
                        buttonText: "Women",
                        textColor: !isMenSelected
                            ? KAppColors.kwhite
                            : isDarkMode
                                ? KAppColors.kwhite
                                : KAppColors.kblack,
                        onTap: () {
                          setState(() {
                            isMenSelected = false;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 56),
              Text(
                "How Old are you ?",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 13),
              AppDropdownButtonWidget(
                icon: Icon(
                  Iconsax.arrow_down_1,
                  color: isDarkMode ? KAppColors.kwhite : KAppColors.kblack,
                ),
                fillColor: isDarkMode
                    ? KAppColors.darkFillColor
                    : KAppColors.lightFillColor,
                style: TextStyle(
                  color: isDarkMode ? KAppColors.kwhite : KAppColors.kblack,
                ),
                hintStyle: TextStyle(
                  color: isDarkMode ? KAppColors.kwhite : KAppColors.kblack,
                ),
                hintText: "Age Range",
                items: ageRanges.map(
                  (age) {
                    return DropdownMenuItem(
                      value: age,
                      child: Text(age),
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  selectedValue = value.toString();
                },
              ),
              const SizedBox(height: 200),
              AppButtonWidget(
                buttonText: "Finish",
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignInScreen();
                      },
                    ),
                    (route) {
                      return false;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
