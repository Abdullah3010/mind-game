import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/core/services/routes/binds/auth_bind.dart';

/// [Binds] is a class that contains all the dependencies that will be used in the app.
class Binds {
  /// [binds] is a function that bind all dependencies.
  static void binds(Injector i) {
    AuthBind.binds(i);
  }
}
