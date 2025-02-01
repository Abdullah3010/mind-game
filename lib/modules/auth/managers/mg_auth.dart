import 'package:flutter/material.dart';
import 'package:mind_game/core/services/forms/f_forget_password.dart';
import 'package:mind_game/core/services/forms/f_login.dart';
import 'package:mind_game/core/services/forms/f_register.dart';

class MgAuth extends ChangeNotifier {
  /// [Login]
  FLogin fLogin = FLogin();

  void login() {
    if (fLogin.validate()) {
      // Do something
    }
  }

  /// [Register]
  FRegister fRegister = FRegister();

  /// [Forget Password]
  FForgetPassword fForgetPassword = FForgetPassword();
  ValueNotifier<int> forgetPasswordStep = ValueNotifier(1);

  void setForgetPasswordStep(int step) {
    forgetPasswordStep.value = step;
    notifyListeners();
  }
}
