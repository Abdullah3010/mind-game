import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/modules/auth/presentation/screens/sn_login.dart';
import 'package:mind_game/modules/auth/presentation/screens/sn_register.dart';
import 'package:mind_game/modules/core/presentation/screens/sn_onboarding.dart';
import 'package:mind_game/modules/core/presentation/screens/sn_splash.dart';
import 'package:mind_game/modules/home/presentation/screens/sn_home.dart';
import 'package:mind_game/modules/home/presentation/screens/sn_subscription.dart';
import 'package:mind_game/modules/profile/presentation/screens/sn_change_password.dart';
import 'package:mind_game/modules/profile/presentation/screens/sn_edit_profile.dart';
import 'package:mind_game/modules/profile/presentation/screens/sn_profile.dart';

/// [Routes] is a class that contains all the routes in the app.
class Routes {
  /// [buildRoutes] is a function that build all the routes in the app.
  static void buildRoutes(RouteManager r) {
    /// ================= Core ================= ///
    r.child(
      RoutesNames.core.splash,
      transition: TransitionType.fadeIn,
      child: (_) => const SNProfile(),
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

    /// ================= HOME ================= ///
    r.child(
      RoutesNames.home.homeMain,
      transition: TransitionType.fadeIn,
      child: (_) => const SNHome(),
    );

    r.child(
      RoutesNames.home.subscriptions,
      transition: TransitionType.fadeIn,
      child: (_) => SNSubscription(),
    );

    /// ================= PROFILE ================= ///
    r.child(
      RoutesNames.profile.profileMain,
      transition: TransitionType.fadeIn,
      child: (_) => const SNProfile(),
    );
    r.child(
      RoutesNames.profile.editProfile,
      transition: TransitionType.fadeIn,
      child: (_) => const SNEditProfile(),
    );
    r.child(
      RoutesNames.profile.changePassword,
      transition: TransitionType.fadeIn,
      child: (_) => const SNChangePassword(),
    );
  }
}
