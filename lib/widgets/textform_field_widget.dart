import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextformFieldWidget extends StatelessWidget {
  const TextformFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  final String? labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        filled: true,
        fillColor: KAppColors.kFillColor,
        hintStyle: TextStyle(color: KAppColors.hintColor),
        labelStyle: TextStyle(
          color: KAppColors.labelColor,
        ),
        // Border when the field is enabled (not focused)
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
        // Border when the field is focused
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
