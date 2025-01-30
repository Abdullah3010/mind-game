import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/modules/auth/managers/mg_auth.dart';

class AuthBind {
  static void binds(Injector i) {
    i.addLazySingleton(MgAuth.new);
  }
}
