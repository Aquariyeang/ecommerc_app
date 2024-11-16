import 'dart:ui';

import 'package:flutter/material.dart';

class WColors {
  WColors._();

  ///Application basic colors
  static final primaryColor = Color(0xff4b68ff);
  static final secondaryColor = Color(0xffffe24b);
  static final accent = Color(0xFFb0c7ff);

  ///Gradiant color
  static final Gradient linearGradiant = LinearGradient(
      colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)],
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707));

  ///Text colors
  static final textPrimary = Color(0xFF333333);
  static final textSecondary = Color(0xff6c757D);
  static final textWhite = Colors.white;

  ///Button colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  /// Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE666);

  /// Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF3883C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  /// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  /// Background colors
  static final light = Color(0xfff6f6f6);
  static final dark = Color(0xff272727);
  static final primaryBackground = Color(0xff3f5ff);
}
