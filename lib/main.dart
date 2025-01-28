import 'dart:async';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mind_game/modules/core/presentation/screens/app_entry_point.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await LocalizeAndTranslate.init(
        assetLoader: const AssetLoaderRootBundleJson('assets/lang/'),
        defaultType: LocalizationDefaultType.asDefined,
        supportedLanguageCodes: ['en', 'ar'],
      );

      runApp(const AppEntryPoint());
    },
    (error, stackTrace) {},
  );
}
