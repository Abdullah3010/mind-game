import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/config/params/params_custom_input.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/widgets/forms/w_input_prefix_icon.dart';
import 'package:mind_game/core/widgets/w_app_button.dart';
import 'package:mind_game/core/widgets/w_shared_app_bar.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
import 'package:mind_game/modules/profile/managers/mg_profile.dart';

class SNEditProfile extends StatefulWidget {
  const SNEditProfile({super.key});

  @override
  State<SNEditProfile> createState() => _SNEditProfileState();
}

class _SNEditProfileState extends State<SNEditProfile> {
  final MgProfile manager = Modular.get<MgProfile>();

  @override
  void initState() {
    super.initState();
    manager.fEditProfile.init();
  }

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      withBackground: true,
      appBar: const WSharedAppBar(
        title: 'الحساب الشخصي',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 10.h,
        ),
        children: [
          40.heightBox,
          manager.fEditProfile.fullNameField.buildField(
            context,
            param: ParamsCustomInput(
              prefixIcon: WInputPrefixIcon(
                icon: Assets.icons.frame37648.path,
              ),
            ),
          ),
          16.heightBox,
          manager.fEditProfile.emailField.buildField(context),
          16.heightBox,
          manager.fEditProfile.phoneField.buildField(context),
          67.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WAppButton(
                title: 'حفظ',
                onTap: () {
                  // manager.fEditProfile.save();
                },
              ),
            ],
          ),
          25.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WAppButton(
                title: 'حذف الحساب',
                color: context.theme.colorScheme.white,
                style: context.textTheme.white16w400.copyWith(
                  color: context.theme.colorScheme.red,
                ),
                icon: Icon(
                  CupertinoIcons.trash,
                  color: context.theme.colorScheme.red,
                ),
                onTap: () {
                  // manager.fEditProfile.save();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
