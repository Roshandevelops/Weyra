import 'package:clot/utils/constants/app_colors.dart';
import 'package:clot/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class TextformFieldWidget extends StatelessWidget {
  const TextformFieldWidget({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.border,
    this.borderRadius,
    this.hintStyle,
    this.fillColor = Colors.white,
  });

  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final InputBorder? border;
  final double? borderRadius;
  final TextStyle? hintStyle;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: labelText,
        hintText: hintText,
        filled: true,
        fillColor:
            isDarkMode ? KAppColors.darkFillColor : KAppColors.lightFillColor,
        //  KAppColors.kFillColor,
        hintStyle: isDarkMode
            ? TextStyle(color: KAppColors.hintLabelDarktColor)
            : TextStyle(color: KAppColors.hintLabelLightColor),
        labelStyle: isDarkMode
            ? TextStyle(color: KAppColors.hintLabelDarktColor)
            : TextStyle(color: KAppColors.hintLabelLightColor),
        // Border when the field is enabled (not focused)
        enabledBorder: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none,
            ),
        // Border when the field is focused
        focusedBorder: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none,
            ),
      ),
    );
  }
}
