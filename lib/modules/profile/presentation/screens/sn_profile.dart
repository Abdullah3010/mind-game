import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
import 'package:mind_game/modules/profile/presentation/widgets/w_profile_list_item.dart';

class SNProfile extends StatelessWidget {
  const SNProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      withSafeArea: false,
      body: Container(
        height: context.height,
        margin: EdgeInsets.only(top: 50.h),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 250.h,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    Assets.icons.scaffoldBg.path,
                    width: context.width,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.icons.iconProfile2.path,
                          ),
                        ],
                      ),
                      10.heightBox,
                      Text(
                        'عبد الرحمن ',
                        style: context.textTheme.white25w800,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      200.heightBox,
                      SvgPicture.asset(
                        Assets.icons.bg.path,
                        width: 29.w,
                        height: 29.h,
                      ),
                      10.widthBox,
                      Text(
                        'مبتدئ',
                        style: context.textTheme.white14w500,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            20.heightBox,
            WProfileListItem(
              title: 'تعديل الملف الشخصي',
              onTap: () {
                Modular.to.pushNamed(RoutesNames.profile.editProfile);
              },
            ),
            WProfileListItem(
              title: 'تغيير كلمة المرور',
              onTap: () {
                Modular.to.pushNamed(RoutesNames.profile.changePassword);
              },
            ),
            WProfileListItem(
              title: 'تواصل معتا',
              onTap: () {},
            ),
            WProfileListItem(
              title: 'سياسة الخصوصية',
              onTap: () {},
            ),
            WProfileListItem(
              title: 'الشروط والاحكام',
              onTap: () {},
            ),
            WProfileListItem(
              title: 'منو احنا ؟',
              onTap: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 10.h,
              ),
              child: Row(
                children: [
                  Text(
                    'اللغة',
                    style: context.textTheme.white16w400,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      context.setLanguageCode('ar');
                    },
                    child: Container(
                      width: 86.w,
                      height: 38.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.w,
                        vertical: 7.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: context.isRTL ? context.theme.colorScheme.buttonColor : context.theme.colorScheme.white,
                      ),
                      child: Center(
                        child: Text(
                          'عربي',
                          textAlign: TextAlign.center,
                          style: context.isRTL ? context.textTheme.white16w500 : context.textTheme.grey16w500,
                        ),
                      ),
                    ),
                  ),
                  35.widthBox,
                  InkWell(
                    onTap: () {
                      context.setLanguageCode('en');
                    },
                    child: Container(
                      width: 86.w,
                      height: 38.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.w,
                        vertical: 7.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: context.isRTL ? context.theme.colorScheme.white : context.theme.colorScheme.buttonColor,
                      ),
                      child: Center(
                        child: Text(
                          'English',
                          textAlign: TextAlign.center,
                          style: context.isRTL ? context.textTheme.grey16w500 : context.textTheme.white16w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 10.h,
                ),
                child: Row(
                  children: [
                    Text(
                      'تسجيل الخروج',
                      style: context.textTheme.white16w400,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
