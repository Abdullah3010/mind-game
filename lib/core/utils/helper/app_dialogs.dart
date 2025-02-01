import 'package:flutter/material.dart';
import 'package:mind_game/core/constants/constants.dart';
import 'package:mind_game/core/widgets/w_app_bottom_sheet.dart';

class AppDialogs {
  static void showBottomSheet({
    required String mainActionTitle,
    required void Function() onMainAction,
    required Widget child,
    String? titleText,
    Widget? titleWidget,
  }) {
    showModalBottomSheet(
      context: Constants.navigatorKey.currentContext!,
      backgroundColor: Colors.transparent,
      elevation: 0,
      isScrollControlled: true,
      builder: (context) {
        return WAppBottomSheet(
          mainActionTitle: mainActionTitle,
          onMainAction: onMainAction,
          titleText: titleText,
          titleWidget: titleWidget,
          child: child,
        );
      },
    );
  }
}
