import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDropdownButtonWidget extends StatefulWidget {
  const AppDropdownButtonWidget({
    super.key,
    this.hintStyle,
    required this.items,
    required this.hintText,
    required this.onChanged,
    this.fillColor = KAppColors.kFillColor,
    this.border,
    this.inputDecoration = const InputDecoration(),
  });
  final Color? fillColor;
  final InputBorder? border;
  final List<DropdownMenuItem<Object>>? items;
  final void Function(Object?)? onChanged;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputDecoration inputDecoration;

  @override
  State<AppDropdownButtonWidget> createState() =>
      _AppDropdownButtonWidgetState();
}

class _AppDropdownButtonWidgetState extends State<AppDropdownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final InputDecoration inputDecoration = InputDecoration(
      hintStyle: widget.hintStyle,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      filled: true,
      fillColor: widget.fillColor,
      border: widget.border ??
          OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
      enabledBorder: widget.border ??
          OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
      disabledBorder: widget.border ??
          OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
      focusedBorder: widget.border ??
          OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
    );
    return DropdownButtonFormField(
      hint: Text(
        widget.hintText ?? "",
        style: Theme.of(context).textTheme.titleSmall,
      ),
      decoration: inputDecoration,
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
