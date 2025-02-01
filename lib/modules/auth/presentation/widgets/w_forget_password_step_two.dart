import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/modules/auth/managers/mg_auth.dart';

class WForgetPasswordStepTwo extends StatefulWidget {
  const WForgetPasswordStepTwo({super.key});

  @override
  State<WForgetPasswordStepTwo> createState() => _WForgetPasswordStepTwoState();
}

class _WForgetPasswordStepTwoState extends State<WForgetPasswordStepTwo> {
  MgAuth manager = Modular.get<MgAuth>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Enter code',
          style: context.textTheme.blue16w500,
        ),
        16.heightBox,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: manager.fForgetPassword.pinCodeField.buildField(context),
        ),
        16.heightBox,
      ],
    );
  }
}
