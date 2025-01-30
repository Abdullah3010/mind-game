import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/config/params/params_custom_input.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/core/widgets/forms/w_input_prefix_icon.dart';
import 'package:mind_game/core/widgets/w_app_button.dart';
import 'package:mind_game/core/widgets/w_shared_app_bar.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mind_game/modules/auth/managers/mg_auth.dart';

class SNRegister extends StatefulWidget {
  const SNRegister({super.key});

  @override
  State<SNRegister> createState() => _SNRegisterState();
}

class _SNRegisterState extends State<SNRegister> {
  MgAuth manager = Modular.get<MgAuth>();

  @override
  void initState() {
    super.initState();
    manager.fRegister.init();
  }

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      appBar: const WSharedAppBar(
        title: 'Register',
      ),
      body: Form(
        key: manager.fRegister.formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 10.h,
          ),
          children: [
            manager.fRegister.fullNameField.buildField(
              context,
              param: ParamsCustomInput(
                prefixIcon: WInputPrefixIcon(
                  icon: Assets.icons.frame37648.path,
                ),
              ),
            ),
            16.heightBox,
            manager.fRegister.emailField.buildField(context),
            16.heightBox,
            manager.fRegister.phoneField.buildField(context),
            16.heightBox,
            manager.fRegister.passwordField.buildField(context),
            16.heightBox,
            manager.fRegister.confirmPasswordField.buildField(context),
            53.heightBox,
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
                  'Already have an account? ',
                  style: context.theme.textTheme.white14w700,
                ),
                8.heightBox,
                InkWell(
                  onTap: () {
                    Modular.to.pushReplacementNamed(RoutesNames.auth.login);
                  },
                  child: Text(
                    'login',
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
