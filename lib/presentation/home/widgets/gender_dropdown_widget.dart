import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:clot/widgets/app_dropdown_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GenderDropdownWidget extends StatefulWidget {
  const GenderDropdownWidget({super.key});

  @override
  State<GenderDropdownWidget> createState() => _GenderDropdownWidgetState();
}

class _GenderDropdownWidgetState extends State<GenderDropdownWidget> {
  String? selectedGender = "Men";
  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return SizedBox(
      width: 150,
      height: 40,
      child: AppDropdownButtonWidget(
        initialValue: selectedGender,
        hintStyle: TextStyle(
          color: isDarkMode
              ? KAppColors.hintLabelDarkColor
              : KAppColors.hintLabelLightColor,
        ),
        fillColor:
            isDarkMode ? KAppColors.darkFillColor : KAppColors.lightFillColor,
        borderRadius: BorderRadius.circular(16),
        icon: Icon(
          Iconsax.arrow_down_1,
          fontWeight: FontWeight.bold,
          color: isDarkMode ? KAppColors.kwhite : KAppColors.kblack,
        ),
        hintText: "Men",
        items: const [
          DropdownMenuItem(
            value: "Men",
            child: Text(
              " Men",
              style: TextStyle(
                fontFamily: "Gabarito",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          DropdownMenuItem(
            value: "Women",
            child: Text(
              " Women",
              style: TextStyle(
                fontFamily: "Gabarito",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
        onChanged: (Object? value) {
          setState(
            () {
              selectedGender = value.toString();
            },
          );
        },
      ),
    );
  }
}
