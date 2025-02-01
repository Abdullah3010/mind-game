import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/modules/auth/managers/mg_auth.dart';

class WForgetPasswordStepOne extends StatefulWidget {
  const WForgetPasswordStepOne({super.key});

  @override
  State<WForgetPasswordStepOne> createState() => _WForgetPasswordStepOneState();
}

class _WForgetPasswordStepOneState extends State<WForgetPasswordStepOne> {
  MgAuth manager = Modular.get<MgAuth>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.heightBox,
        manager.fForgetPassword.emailField.buildField(context),
        16.heightBox,
      ],
    );
  }
}
