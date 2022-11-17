import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_test/src/features/setting/settings_barrel.dart';
import 'package:flutter_ui_test/src/global/ui/ui_barrel.dart';
import 'package:flutter_ui_test/src/utils/utils_barrel.dart';

part 'widgets/settings_app_bar.dart';

part 'widgets/settings_view.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingsAppBar(
        onBackPressed: () {},
      ),
      body: const SettingsView(),
    );
  }
}
