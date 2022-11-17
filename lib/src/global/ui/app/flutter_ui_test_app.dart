import 'package:flutter/material.dart';
import 'package:flutter_ui_test/src/features/setting/settings_barrel.dart';
import 'package:flutter_ui_test/src/global/ui/theme/app_theme.dart';

class FlutterUiTestApp extends StatelessWidget {
  const FlutterUiTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SettingsScreen(),
      themeMode: ThemeMode.light,
      theme: AppThemes.lightTheme,
    );
  }
}
