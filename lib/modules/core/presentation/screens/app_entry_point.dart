import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mind_game/core/constants/constants.dart';
import 'package:mind_game/core/services/routes/app_module.dart';
import 'package:mind_game/core/theme/app_themes.dart';
import 'package:toastification/toastification.dart';

class AppEntryPoint extends StatefulWidget {
  const AppEntryPoint({super.key});

  @override
  State<AppEntryPoint> createState() => _AppEntryPointState();
}

class _AppEntryPointState extends State<AppEntryPoint> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    Modular.setNavigatorKey(Constants.navigatorKey);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      enableScaleText: () => false,
      enableScaleWH: () => false,
      builder: (_, __) => ModularApp(
        module: AppModule(),
        child: LocalizedApp(
          child: ToastificationWrapper(
            config: ToastificationConfig(
              alignment: Alignment.topCenter,
              itemWidth: MediaQuery.sizeOf(context).width * 0.9,
            ),
            child: MaterialApp.router(
              title: 'Game Mind',
              debugShowCheckedModeBanner: false,
              locale: context.locale,
              localizationsDelegates: context.delegates,
              supportedLocales: context.supportedLocales,
              theme: AppThemes.light,
              routerConfig: Modular.routerConfig,
              builder: (ctx, child) => LocalizeAndTranslate.directionBuilder(context, child),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
