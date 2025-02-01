import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/modules/auth/presentation/screens/sn_login.dart';
import 'package:mind_game/modules/auth/presentation/screens/sn_register.dart';
import 'package:mind_game/modules/core/presentation/screens/sn_onboarding.dart';
import 'package:mind_game/modules/core/presentation/screens/sn_splash.dart';

/// [Routes] is a class that contains all the routes in the app.
class Routes {
  /// [buildRoutes] is a function that build all the routes in the app.
  static void buildRoutes(RouteManager r) {
    /// ================= Core ================= ///
    r.child(
      RoutesNames.core.splash,
      transition: TransitionType.fadeIn,
      child: (_) => const SNSplash(),
    );

    r.child(
      RoutesNames.core.onboarding,
      transition: TransitionType.fadeIn,
      child: (_) => const SNOnboarding(),
    );

    /// ================= Auth ================= ///
    r.child(
      RoutesNames.auth.login,
      transition: TransitionType.fadeIn,
      child: (_) => const SNLogin(),
    );
    r.child(
      RoutesNames.auth.register,
      transition: TransitionType.fadeIn,
      child: (_) => const SNRegister(),
    );
  }
}
