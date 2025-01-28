import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/string_extensions.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';

class SNOnboarding extends StatefulWidget {
  const SNOnboarding({super.key});

  @override
  State<SNOnboarding> createState() => _SNOnboardingState();
}

class _SNOnboardingState extends State<SNOnboarding> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                // ...List.generate(
                //   3,
                //   (index) {
                //     return InkWell(
                //       onTap: () {
                //         setState(() {
                //           currentIndex = index;
                //         });
                //       },
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 4.w),
                //         child: SvgPicture.asset(
                //           index == currentIndex ? Assets.icons.currentStep.path : Assets.icons.step.path,
                //         ),
                //       ),
                //     );
                //   },
                // ),
                const Spacer(),
                if (currentIndex == 2)
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: context.theme.colorScheme.grey,
                    ),
                  )
                else
                  InkWell(
                    onTap: () {
                      Modular.to.navigate(RoutesNames.auth.login);
                    },
                    child: Text(
                      'Skip'.translated,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: context.theme.colorScheme.grey,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
