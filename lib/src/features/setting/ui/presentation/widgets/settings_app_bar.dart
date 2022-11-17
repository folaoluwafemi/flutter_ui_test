part of '../settings_screen.dart';

class SettingsAppBar extends AppBar {
  final VoidCallback onBackPressed;

  SettingsAppBar({super.key, required this.onBackPressed})
      : super(
    elevation: 0,
    leading: IconButton(
      onPressed: onBackPressed,
      icon: SvgPicture.asset(
        Assets.arrowLeft,
        width: 28,
        height: 28,
        fit: BoxFit.cover,
      ),
    ),
    title: const Text(
      'Settings',
      style: TextStyles.graphikSemiBold,
    ),
  );
}
