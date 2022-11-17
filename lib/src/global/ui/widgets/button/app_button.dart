import 'package:flutter/material.dart';
import 'package:flutter_ui_test/src/global/ui/ui_barrel.dart';
import 'package:flutter_ui_test/src/utils/utils_barrel.dart';

abstract class AppButton {
  static Widget round({
    required VoidCallback onPressed,
    required child,
    double elevation = 0,
    double height = 36,
    double width = 36,
    bool shadow = true,
    bool center = true,
    Color color = AppColors.deepBlue,
    bool disabled = false,
    EdgeInsets padding = EdgeInsets.zero,
    Key? key,
  }) =>
      Opacity(
        opacity: disabled ? 0.2 : 1,
        child: SizedBox(
          width: width,
          height: height,
          child: RawMaterialButton(
            elevation: elevation,
            fillColor: color,
            highlightElevation: elevation,
            shape: const CircleBorder(),
            onPressed: onPressed,
            padding: padding,
            child: center ? Center(child: child) : child,
          ),
        ),
      );

  static Widget flat({
    required VoidCallback onPressed,
    VoidCallback? onLongPress,
    required Widget child,
    double height = 50,
    double width = 200,
    bool center = true,
    double radius = 8,
    bool shrink = false,
    bool shrinkHeight = false,
    bool shrinkWidth = false,
    bool loading = false,
    Color color = AppColors.deepBlue,
    Color? backGroundColor,
    bool disabled = false,
    EdgeInsets padding = EdgeInsets.zero,
    Key? key,
  }) {
    return Opacity(
      opacity: disabled ? 0.4 : 1,
      child: SizedBox(
        width: shrink
            ? null
            : shrinkWidth
                ? null
                : width,
        height: shrink
            ? null
            : shrinkHeight
                ? null
                : height,
        child: MaterialButton(
          focusColor: color,
          onLongPress: onLongPress,
          shape: RoundedRectangleBorder(
            borderRadius: Ui.circularRadius(radius),
          ),
          onPressed: disabled ? null : onPressed,
          padding: padding,
          child: loading
              ? Builder(
                  builder: (context) => center
                      ? Center(
                          child: CircularProgressIndicator(
                            color: color,
                            backgroundColor: backGroundColor ??
                                context.theme.scaffoldBackgroundColor,
                          ),
                        )
                      : CircularProgressIndicator(
                          color: color,
                          backgroundColor: backGroundColor ??
                              context.theme.scaffoldBackgroundColor,
                        ),
                )
              : center
                  ? Center(child: child)
                  : child,
        ),
      ),
    );
  }
}
