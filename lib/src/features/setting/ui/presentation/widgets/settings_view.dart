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

class UserDetailSection extends StatelessWidget {
  final User user;

  const UserDetailSection({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(user.profilePhoto),
            ),
            Positioned(
              right: -7,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x20202014),
                        blurRadius: 7,
                        offset: Offset(0, 1))
                  ],
                ),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: AppColors.white,
                  child: SvgPicture.asset(
                    Assets.camera,
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          ],
        ),
        12.boxHeight,
        Text(
          'Mornin\' ${user.firstName}',
          style: TextStyles.graphikBlack.copyWith(color: AppColors.deepBlue100),
        ),
        2.boxHeight,
        Text(
          '${user.firstName} ${user.lastName}',
          style: TextStyles.gelion.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
