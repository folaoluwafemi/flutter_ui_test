import 'package:flutter/material.dart';
import 'package:flutter_ui_test/src/global/ui/colors/app_colors.dart';

abstract class AppThemes {
  static ThemeData get lightTheme => _lightTheme;
}

final ThemeData _lightTheme = ThemeData.light().copyWith(
  primaryColor: AppColors.deepBlue,
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: _lightColorScheme,
);
const ColorScheme _lightColorScheme = ColorScheme.light(
  primary: AppColors.deepBlue,
  onPrimary: AppColors.white,
  secondary: AppColors.blue,
  primaryContainer: AppColors.lightBlue,
  onPrimaryContainer: AppColors.blue,
  background: AppColors.white,
);
