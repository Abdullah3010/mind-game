import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';

class WSharedAppBar extends StatelessWidget {
  const WSharedAppBar({
    super.key,
    this.leading,
    this.title,
    this.withBack = false,
  });

  final Widget? leading;
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
            ),
          ),
          8.horizontalSpace,
        ],
        if (leading != null)
          leading ?? Container()
        else if (leading == null && title != null)
          Text(
            title ?? '',
            style: context.textTheme.navyBlue16w900,
          ),
        const Spacer(),
      ],
    );
  }
}
