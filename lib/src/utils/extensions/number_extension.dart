import 'package:flutter/widgets.dart';

extension NumberExtension on num {
  ///returns value * (percentage/100)
  double percent(num percentage) => (this * (percentage / 100)).toDouble();

  double get negate => this * -1;

  SizedBox get boxHeight => SizedBox(height: toDouble());

  SizedBox get boxWidth => SizedBox(width: toDouble());
}
