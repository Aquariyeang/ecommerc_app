import 'package:flutter/material.dart';

class WOutlineButtonTheme {
  WOutlineButtonTheme._();
  static final lightOutline = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue),
      foregroundColor: Colors.black,
    ),
  );
  static final darkOutline = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue),
      foregroundColor: Colors.black,
    ),
  );
}
