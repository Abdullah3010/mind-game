import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';

class WSharedContainer extends StatelessWidget {
  const WSharedContainer({
    required this.child,
    required this.childHeight,
    required this.childWidth,
    this.fullHeight,
    this.button,
    this.padding,
    this.buttonHeight,
    super.key,
  });

  final Widget child;
  final double childHeight;
  final double childWidth;
  final double? buttonHeight;
  final Widget? button;
  final double? fullHeight;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: childWidth,
          // height: childHeight,
          margin: EdgeInsets.only(bottom: buttonHeight ?? 0),
          padding: padding ?? EdgeInsets.all(25.w),
          decoration: BoxDecoration(
            color: context.theme.colorScheme.white,
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: child,
        ),
        if (button != null && buttonHeight != null)
          Positioned(
            bottom: buttonHeight!/2,
            child: button!,
          ),
      ],
    );
  }
}
