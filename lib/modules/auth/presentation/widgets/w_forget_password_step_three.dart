import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/modules/auth/managers/mg_auth.dart';

class WForgetPasswordStepThree extends StatefulWidget {
  const WForgetPasswordStepThree({super.key});

  @override
  State<WForgetPasswordStepThree> createState() => _WForgetPasswordStepThreeState();
}

class _WForgetPasswordStepThreeState extends State<WForgetPasswordStepThree> {
  MgAuth manager = Modular.get<MgAuth>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '',
          style: context.textTheme.blue16w500,
        ),
        16.heightBox,
        manager.fForgetPassword.passwordField.buildField(context),
        16.heightBox,
        manager.fForgetPassword.confirmPasswordField.buildField(context),
        16.heightBox,
      ],
    );
  }
}
