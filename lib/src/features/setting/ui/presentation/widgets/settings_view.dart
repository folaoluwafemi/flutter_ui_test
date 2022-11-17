part of '../settings_screen.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        24.boxHeight,
        const UserDetailSection(user: FakeUserData.user),
        16.boxHeight,
        ...SettingsOption.values.map(
          (e) => SettingOptionWidget(
            option: e,
            onChanged: onOptionPressed,
          ),
        )
      ],
    );
  }

  void onOptionPressed(SettingsOption option) {}
}
