import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/modules/auth/managers/mg_auth.dart';
import 'package:mind_game/modules/home/managers/mg_home.dart';
import 'package:mind_game/modules/profile/managers/mg_profile.dart';

/// [Binds] is a class that contains all the dependencies that will be used in the app.
class Binds {
  /// [binds] is a function that bind all dependencies.
  static void binds(Injector i) {
    /// ================= Auth ================= ///
    i.addLazySingleton(MgAuth.new);

    /// ================= Home ================= ///
    i.addLazySingleton(MgHome.new);

    /// ================= Profile ================= ///
    i.addLazySingleton(MgProfile.new);
  }
}
