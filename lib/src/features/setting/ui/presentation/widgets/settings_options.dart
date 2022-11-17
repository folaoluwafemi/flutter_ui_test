import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_test/src/global/ui/ui_barrel.dart';
import 'package:flutter_ui_test/src/utils/utils_barrel.dart';

enum SettingsOption {
  accountDetails(Assets.edit, AppColors.lightBlue, 'Account Details'),
  notificationSettings(
    Assets.notification,
    AppColors.lightBlue,
    'Notification Settings',
  ),
  securitySettings(Assets.settings, AppColors.lightBlue, 'Security Settings'),
  privacyPolicy(Assets.visibility, AppColors.lightBlue, 'Privacy Policy'),
  appSettings(Assets.document, AppColors.lightBlue, 'App Settings'),
  logout(Assets.logout, AppColors.lightRed, 'Log Out'),
  deleteAccount(Assets.error, AppColors.lightRed, 'Delete Account');

  final String iconAssetPath, text;
  final Color assetBackgroundColor;

  const SettingsOption(
    this.iconAssetPath,
    this.assetBackgroundColor,
    this.text,
  );
}

class SettingOptionWidget extends StatelessWidget {
  final SettingsOption option;
  final ValueChanged<SettingsOption> onChanged;

  const SettingOptionWidget({
    Key? key,
    required this.option,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton.flat(
      onPressed: () => onChanged(option),
      radius: 0,
      shrink: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            16.boxHeight,
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: option.assetBackgroundColor,
                  child: SvgPicture.asset(
                    option.iconAssetPath,
                    height: 16,
                    width: 16,
                    fit: BoxFit.cover,
                  ),
                ),
                12.boxWidth,
                Text(
                  option.text,
                  style: TextStyles.gelionMedium.copyWith(
                    color: AppColors.deepBlue100,
                  ),
                )
              ],
            ),
            16.boxHeight,
            const Divider(height: 1, thickness: 1, color: AppColors.lightGrey),
          ],
        ),
      ),
    );
  }
}
