import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDropdownButton extends StatefulWidget {
  const AppDropdownButton({
    super.key,
    required this.items,
    this.onChanged,
    this.fillColor = KAppColors.kFillColor,
    this.border,
  });
  final Color? fillColor;
  final InputBorder? border;
  final List<DropdownMenuItem<Object>>? items;
  final void Function(Object?)? onChanged;

  @override
  State<AppDropdownButton> createState() => _AppDropdownButtonState();
}

class _AppDropdownButtonState extends State<AppDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text(
        "Age Range",
        style: Theme.of(context).textTheme.titleSmall,
      ),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        filled: true,
        fillColor: widget.fillColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      borderRadius: BorderRadius.circular(10),
      items: widget.items,
      onChanged: widget.onChanged,
      icon: const Icon(
        CupertinoIcons.chevron_down,
        color: KAppColors.kblack,
      ),
    );
  }
}
