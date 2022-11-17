import 'package:flutter_ui_test/src/global/domain/domain_barrel.dart';
import 'package:flutter_ui_test/src/utils/constants/assets.dart';

abstract class FakeUserData {
  static const User user = User(
    firstName: 'Chris',
    lastName: 'Adolphus',
    profilePhoto: Assets.profilePhoto,
  );
}
