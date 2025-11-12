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
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: labelText,
        hintText: hintText,
        enabledBorder: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none,
            ),
        // Border when the field is focused
        focusedBorder: border,
      ),
    );
  }
}
