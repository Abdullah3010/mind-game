import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/core/utils/helper/app_dialogs.dart';
import 'package:mind_game/core/widgets/w_app_button.dart';
import 'package:mind_game/core/widgets/w_shared_app_bar.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/modules/auth/managers/mg_auth.dart';
import 'package:mind_game/modules/auth/presentation/widgets/w_forget_password_bottom_sheet.dart';

class SNLogin extends StatefulWidget {
  const SNLogin({super.key});

  @override
  State<SNLogin> createState() => _SNLoginState();
}

class _SNLoginState extends State<SNLogin> {
  MgAuth manager = Modular.get<MgAuth>();

  @override
  void initState() {
    super.initState();
    manager.fLogin.init();
  }

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      withBackground: true,
      appBar: const WSharedAppBar(
        title: 'Login',
      ),
      body: Form(
        key: manager.fLogin.formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 10.h,
          ),
          children: [
            manager.fLogin.emailField.buildField(context),
            16.heightBox,
            manager.fLogin.passwordField.buildField(context),
            25.heightBox,
            InkWell(
              onTap: () {
                AppDialogs.showBottomSheet(
                  titleText: 'Forgot Password?',
                  mainActionTitle: 'Continue',
                  onMainAction: () {
                    if (manager.forgetPasswordStep.value == 1) {
                      manager.setForgetPasswordStep(2);
                    } else if (manager.forgetPasswordStep.value == 2) {
                      manager.setForgetPasswordStep(3);
                    } else if (manager.forgetPasswordStep.value == 3) {
                      Modular.to.pop();
                      manager.setForgetPasswordStep(1);
                    }
                  },
                  child: const WForgetPasswordBottomSheet(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: context.theme.textTheme.white14w700.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: context.theme.colorScheme.white,
                    ),
                  ),
                ],
              ),
            ),
            25.heightBox,
            Column(
              children: [
                WAppButton(
                  title: 'Login',
                  onTap: () async {
                    manager.login();
                  },
                ),
                25.heightBox,
                Text(
                  'Don\'t have an account? ',
                  style: context.theme.textTheme.white14w700,
                ),
                8.heightBox,
                InkWell(
                  onTap: () {
                    Modular.to.pushReplacementNamed(RoutesNames.auth.register);
                  },
                  child: Text(
                    'Register',
                    style: context.theme.textTheme.white14w700.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: context.theme.colorScheme.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
