import 'package:e_commerce_yt/utils/constants/colors.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/appbar_theme.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/bottom_sheet_theme.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/check_box_theme.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/chip_theme.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/elevated_button_theme.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/input_decoration_theme.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/outline_button_theme.dart';
import 'package:e_commerce_yt/utils/theme/custom_Theme/text_theme.dart';
import 'package:flutter/material.dart';

class WAppTheme {
  WAppTheme._();
  static final lightmode = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: WColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: WTextTheme.lightTexttheme,
    elevatedButtonTheme: WElevatedButtonTheme.lightElevatedButton,
    outlinedButtonTheme: WOutlineButtonTheme.lightOutline,
    appBarTheme: WAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: WBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: WChipTheme.lightChipTheme,
    inputDecorationTheme: WInputDecorationTheme.lightInputDecorationTheme,
    checkboxTheme: WCheckBoxTheme.lightCheckBoxTheme,
  );

  static final darkmode = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: WColors.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    textTheme: WTextTheme.darkTexttheme,
    elevatedButtonTheme: WElevatedButtonTheme.darkElevatedButton,
    appBarTheme: WAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: WBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: WChipTheme.darkChipTheme,
    inputDecorationTheme: WInputDecorationTheme.darkInputDecorationTheme,
    checkboxTheme: WCheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: WOutlineButtonTheme.darkOutline,
  );
}
