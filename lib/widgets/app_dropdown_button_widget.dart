import 'package:flutter/material.dart';

class AppDropdownButtonWidget extends StatefulWidget {
  const AppDropdownButtonWidget({
    super.key,
    this.hintStyle,
    required this.items,
    required this.hintText,
    required this.onChanged,
    required this.fillColor,
    this.border,
    this.inputDecoration = const InputDecoration(),
    this.icon,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
    this.style,
    this.initialValue,
  });
  final Color? fillColor;
  final InputBorder? border;
  final List<DropdownMenuItem<Object>>? items;
  final void Function(Object?)? onChanged;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputDecoration inputDecoration;
  final Widget? icon;
  final BorderRadius? borderRadius;
  final TextStyle? style;
  final Object? initialValue;

  @override
  State<AppDropdownButtonWidget> createState() =>
      _AppDropdownButtonWidgetState();
}

class _AppDropdownButtonWidgetState extends State<AppDropdownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final InputDecoration inputDecoration = InputDecoration(
      hintStyle: widget.hintStyle,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
      initialValue: widget.initialValue,
      hint: Text(
        widget.hintText ?? "",
        style: widget.style,
      ),
      decoration: inputDecoration,
      borderRadius: widget.borderRadius,
      items: widget.items,
      onChanged: widget.onChanged,
      icon: widget.icon,
    );
  }
}
