import 'package:flutter/material.dart';
import 'package:mind_game/core/config/models/m_country_code.dart';
import 'package:mind_game/core/constants/cst_config_key.dart';

class Constants {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final List<MCountryCode> countries = [
    MCountryCode(code: '+20', name: 'EG'),
    MCountryCode(code: '+971', name: 'AE'),
    MCountryCode(code: '+49', name: 'DE'),
  ];

  static CSTConfigKey get configKeys => CSTConfigKey();
}
