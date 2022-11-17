import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_test/src/global/domain/domain_barrel.dart';
import 'package:flutter_ui_test/src/global/ui/ui_barrel.dart';
import 'package:flutter_ui_test/src/global/ui/widgets/button/app_button.dart';
import 'package:flutter_ui_test/src/utils/constants/assets.dart';
import 'package:flutter_ui_test/src/utils/extensions/extensions.dart';
import 'package:flutter_ui_test/src/utils/fakes/fake_user_data.dart';

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


