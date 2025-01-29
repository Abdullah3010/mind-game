import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';

class SNSplash extends StatefulWidget {
  const SNSplash({super.key});

  @override
  State<SNSplash> createState() => _SNSplashState();
}

class _SNSplashState extends State<SNSplash> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    _animationController.repeat(reverse: true);

    Future.delayed(
      const Duration(seconds: 2),
      () async {
        Modular.to.pushNamed(RoutesNames.core.onboarding);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: SvgPicture.asset(
                    Assets.icons.illustration.path,
                  ),
                );
              }),
          16.verticalSpace,
          Center(
            child: Text(
              'شغل مخك',
              style: context.textTheme.white25w800.copyWith(
                fontSize: 40.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
