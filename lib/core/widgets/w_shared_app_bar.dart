import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';

class WSharedAppBar extends StatelessWidget {
  const WSharedAppBar({
    super.key,
    this.title,
    this.withBack = true,
  });

  final String? title;
  final bool withBack;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (withBack) ...[
          InkWell(
            onTap: () {
              Modular.to.pop();
            },
            child: SvgPicture.asset(
              Assets.icons.iconLeft.path,
              colorFilter: ColorFilter.mode(
                context.theme.colorScheme.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          8.horizontalSpace,
        ],
        Expanded(
          child: Center(
            child: Text(
              title ?? '',
              style: context.textTheme.white14w700,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        40.widthBox,
      ],
    );
  }
}
