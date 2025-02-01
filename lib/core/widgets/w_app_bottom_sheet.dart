import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/widgets/w_app_button.dart';

class WAppBottomSheet extends StatelessWidget {
  const WAppBottomSheet({
    super.key,
    required this.mainActionTitle,
    required this.onMainAction,
    this.titleText,
    this.titleWidget,
    this.withCancel = false,
    required this.child,
  });

  final Widget child;
  final String mainActionTitle;
  final void Function() onMainAction;

  final bool? withCancel;
  final String? titleText;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 10.h,
        bottom: MediaQuery.of(context).viewPadding.bottom,
      ),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Modular.to.pop(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    Assets.icons.iconLeft.path,
                    colorFilter: ColorFilter.mode(
                      context.theme.colorScheme.blue,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              if (titleWidget != null) titleWidget ?? const SizedBox(),
              if (titleText != null && titleWidget == null && titleText?.isEmpty == false)
                Expanded(
                  child: Text(
                    titleText ?? '',
                    style: context.textTheme.blue16w500,
                    textAlign: TextAlign.center,
                  ),
                ),
              40.widthBox,
            ],
          ),
          30.verticalSpace,
          child,
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: (withCancel ?? false)
                ? [
                    Expanded(
                      child: WAppButton(
                        title: mainActionTitle,
                        onTap: onMainAction,
                      ),
                    ),
                    60.horizontalSpace,
                    Expanded(
                      child: WAppButton(
                        title: 'Cancel',
                        isFilled: false,
                        onTap: () {
                          Modular.to.pop();
                        },
                      ),
                    ),
                  ]
                : [
                    WAppButton(
                      title: mainActionTitle,
                      onTap: onMainAction,
                    ),
                  ],
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
