import 'package:clot/presentation/auth/signin/signin_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/widgets/app_button.dart';
import 'package:clot/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  bool isMenSelected = true;
  final ageRanges = ["18-24", "25-34", "35-44", "45-60", "60 & Above"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                SizedBox(
                  width: 161,
                  child: AppButton(
                    backgroundColor: isMenSelected
                        ? KAppColors.primaryColor
                        : KAppColors.kFillColor,
                    buttonText: "Men",
                    textColor:
                        isMenSelected ? KAppColors.kwhite : KAppColors.kblack,
                    onTap: () {
                      setState(() {
                        isMenSelected = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 161,
                  child: AppButton(
                    backgroundColor: !isMenSelected
                        ? KAppColors.primaryColor
                        : KAppColors.kFillColor,
                    buttonText: "Women",
                    textColor:
                        !isMenSelected ? KAppColors.kwhite : KAppColors.kblack,
                    onTap: () {
                      setState(() {
                        isMenSelected = false;
                      });
                    },
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
            AppDropdownButton(
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
            AppButton(
              buttonText: "Finish",
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
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
