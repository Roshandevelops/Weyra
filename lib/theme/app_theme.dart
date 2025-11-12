import 'package:clot/theme/custom_themes/appbar_theme.dart';
import 'package:clot/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:clot/theme/custom_themes/checkbox_theme.dart';
import 'package:clot/theme/custom_themes/chip_theme.dart';
import 'package:clot/theme/custom_themes/outlined_button_theme.dart';
import 'package:clot/theme/custom_themes/text_theme.dart';
import 'package:clot/theme/custom_themes/textform_field_theme.dart';
import 'package:clot/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: KAppColors.kwhite,
    ),
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: KTextTheme.lightTextTheme,
    appBarTheme: KAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: KChipTheme.lightChipTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlindeBButtonTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'circular std',
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
    checkboxTheme: KCheckboxTheme.lightCheckBoxTheme,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: KAppColors.kblack,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: KAppColors.kblack,
    ),
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: const Color(0xff1D182A),
    scaffoldBackgroundColor: const Color(0xff1D182A),
    textTheme: KTextTheme.darkTextTheme,
    appBarTheme: KAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: KChipTheme.darkChipTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.darkOutlindeBButtonTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'circular std',
    inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
    checkboxTheme: KCheckboxTheme.darkCheckBoxTheme,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: KAppColors.kblack,
      ),
    ),
  );
}
