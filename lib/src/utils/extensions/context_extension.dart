import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get queryScreenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);

  double get screenHeight => queryScreenSize.height;

  double get screenWidth => queryScreenSize.width;

  NavigatorState get navigator => Navigator.of(this);
}
