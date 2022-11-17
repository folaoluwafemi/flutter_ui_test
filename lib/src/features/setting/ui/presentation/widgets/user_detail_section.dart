import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_test/src/global/domain/domain_barrel.dart';
import 'package:flutter_ui_test/src/global/ui/ui_barrel.dart';
import 'package:flutter_ui_test/src/utils/utils_barrel.dart';

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
