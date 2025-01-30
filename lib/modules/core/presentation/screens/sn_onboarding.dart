import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';

class SNOnboarding extends StatefulWidget {
  const SNOnboarding({super.key});

  @override
  State<SNOnboarding> createState() => _SNOnboardingState();
}

class _SNOnboardingState extends State<SNOnboarding> {
  int currentIndex = 0;
  List<String> subTitles = [
    'كون فريقين وخليها احلي وزود التحدي',
    'لعبة المتعة الجماعيه .. تقدر تختار من ١ ل ٦ اقسام و أسألة كثيرة علشان تختبر معلوماتك',
    'كون فريقين وخليها احلي وزود التحدي',
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.icons.illustration.path,
            ),
            Center(
              child: Text(
                'سؤال و جواب',
                style: context.textTheme.white28w800,
                textAlign: TextAlign.center,
              ),
            ),
            20.heightBox,
            SizedBox(
              height: 320.h,
              child: Stack(
                children: [
                  Container(
                    width: 372.w,
                    height: 294.h,
                    padding: EdgeInsets.all(25.w),
                    decoration: BoxDecoration(
                      color: context.theme.colorScheme.white,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Column(
                      children: [
                        20.heightBox,
                        Text(
                          'أسألة شيقة بإنتظارك',
                          style: context.textTheme.blue18w700,
                        ),
                        12.heightBox,
                        SizedBox(
                          height: 50.h,
                          child: Text(
                            subTitles[currentIndex % subTitles.length],
                            style: context.textTheme.grey14w500,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        48.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            subTitles.length,
                            (index) => Container(
                              width: 28.w,
                              height: 8.h,
                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                              decoration: BoxDecoration(
                                color: currentIndex % subTitles.length == index
                                    ? context.theme.colorScheme.skyBlue
                                    : context.theme.colorScheme.midGery,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                            ),
                          ),
                        ),
                        20.heightBox,
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex++;
                        });
                      },
                      child: Container(
                        width: 80.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: context.theme.colorScheme.skyBlue,
                          borderRadius: BorderRadius.circular(36.r),
                          boxShadow: [
                            BoxShadow(
                              color: context.theme.colorScheme.skyBlue.withValues(alpha: 0.6),
                              offset: const Offset(0, 4),
                              blurRadius: 15,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: context.theme.colorScheme.white,
                            size: 35.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
