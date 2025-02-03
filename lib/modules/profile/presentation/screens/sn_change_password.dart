import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/widgets/w_app_button.dart';
import 'package:mind_game/core/widgets/w_shared_app_bar.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
import 'package:mind_game/modules/profile/managers/mg_profile.dart';

class SNChangePassword extends StatefulWidget {
  const SNChangePassword({super.key});

  @override
  State<SNChangePassword> createState() => _SNChangePasswordState();
}

class _SNChangePasswordState extends State<SNChangePassword> {
  final MgProfile manager = Modular.get<MgProfile>();

  @override
  void initState() {
    super.initState();
    manager.fChangePassword.init();
  }

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      withBackground: true,
      appBar: const WSharedAppBar(
        title: 'تغيير كلمة المرور',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 10.h,
        ),
        children: [
          40.heightBox,
          manager.fChangePassword.currentPasswordField.buildField(context),
          16.heightBox,
          manager.fChangePassword.newPasswordField.buildField(context),
          16.heightBox,
          manager.fChangePassword.confirmNewPasswordField.buildField(context),
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
        ],
      ),
    );
  }
}
