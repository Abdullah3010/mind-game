import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';

class WProfileListItem extends StatelessWidget {
  const WProfileListItem({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 10.h,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: context.textTheme.white16w400,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
