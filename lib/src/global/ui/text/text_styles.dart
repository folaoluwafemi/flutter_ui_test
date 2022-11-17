import 'package:flutter/material.dart';
import 'package:flutter_ui_test/src/utils/constants/font_types.dart';

abstract class TextStyles {
  ///fontSize: 28
  ///fontFamily: Graphik
  ///fontWeight: w900
  static const graphikBlack = TextStyle(
    fontFamily: FontFamilies.graphik,
    fontSize: 28,
    fontWeight: FontWeight.w900,
  );

  ///fontSize: 18
  ///fontFamily: Graphik
  ///fontWeight: w600
  static const graphikSemiBold = TextStyle(
    fontFamily: FontFamilies.graphik,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  ///fontSize: 14
  ///fontFamily: Gelion
  ///fontWeight: w400
  static const gelion = TextStyle(
    fontFamily: FontFamilies.gelion,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  ///fontSize: 14
  ///fontFamily: Gelion
  ///fontWeight: w400
  static const gelionMedium = TextStyle(
    fontFamily: FontFamilies.gelion,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
