class RoutesNames {
  static String get baseUrl => '/';

  static CoreRoutes core = CoreRoutes();
  static AuthRoutes auth = AuthRoutes();
  static HomeRoutes home = HomeRoutes();
  static ProfileRoutes profile = ProfileRoutes();
}

class CoreRoutes {
  static String get baseUrl => RoutesNames.baseUrl;

  String get splash => baseUrl;
  String get onboarding => '${baseUrl}onboarding';
}

class AuthRoutes {
  static String get baseUrl => RoutesNames.baseUrl;

  String get login => '${baseUrl}login';
  String get register => '${baseUrl}register';
  String get forgetPassword => '${baseUrl}forget-password';
  String get changePassword => '${baseUrl}change-password';
}

class HomeRoutes {
  static String get baseUrl => RoutesNames.baseUrl;

  String get homeMain => '${baseUrl}home';
  String get subscriptions => '${baseUrl}subscriptions';
}

class ProfileRoutes {
  static String get baseUrl => RoutesNames.baseUrl;

  String get profileMain => '${baseUrl}profile';
  String get editProfile => '${baseUrl}edit-profile';
  String get changePassword => '${baseUrl}change-password';
}
