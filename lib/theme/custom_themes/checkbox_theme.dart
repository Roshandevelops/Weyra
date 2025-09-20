import 'package:flutter/material.dart';

class KCheckboxTheme {
  KCheckboxTheme();

  ///customizable Light Text Theme

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      checkColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          } else {
            return Colors.black;
          }
        },
      ),
      fillColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.blue;
          } else {
            return Colors.transparent;
          }
        },
      ));

  ///customizable Dark Text Theme

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      checkColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          } else {
            return Colors.black;
          }
        },
      ),
      fillColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.blue;
          } else {
            return Colors.transparent;
          }
        },
      ));
}
