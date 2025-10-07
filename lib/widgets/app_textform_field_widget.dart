import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextformFieldWidget extends StatelessWidget {
  const TextformFieldWidget(
      {super.key,
      this.labelText,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.border,
      this.borderRadius,
      this.hintStyle});

  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final InputBorder? border;
  final double? borderRadius;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: labelText,
        hintText: hintText,
        filled: true,
        fillColor: KAppColors.kFillColor,
        hintStyle: hintStyle ?? TextStyle(color: KAppColors.hintLabelColor),
        labelStyle: TextStyle(color: KAppColors.hintLabelColor),
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
