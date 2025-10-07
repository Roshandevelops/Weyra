import 'package:clot/presentation/auth/signin/signin_screen.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/widgets/app_button_widget.dart';
import 'package:clot/widgets/app_dropdown_button_widget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isMenSelected = true;
  final ageRanges = ["18-24", "25-34", "35-44", "45-60", "60 & Above"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // showAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
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
                    child: AppButtonWidget(
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
                    child: AppButtonWidget(
                      backgroundColor: !isMenSelected
                          ? KAppColors.primaryColor
                          : KAppColors.kFillColor,
                      buttonText: "Women",
                      textColor: !isMenSelected
                          ? KAppColors.kwhite
                          : KAppColors.kblack,
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
              AppDropdownButtonWidget(
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
