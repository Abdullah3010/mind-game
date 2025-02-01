import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/services/routes/routes_names.dart';
import 'package:mind_game/core/widgets/w_app_button.dart';
import 'package:mind_game/core/widgets/w_shared_container.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:mind_game/modules/home/data/models/m_help_way.dart';

class SNHome extends StatefulWidget {
  const SNHome({super.key});

  @override
  State<SNHome> createState() => _SNHomeState();
}

class _SNHomeState extends State<SNHome> {
  List<MHelpWay> helpWays = [
    MHelpWay(title: 'غير السؤال', id: '1', isSelected: false),
    MHelpWay(title: 'سؤال ببلاش', id: '2', isSelected: false),
    MHelpWay(title: 'دبّل نقاطك', id: '3', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      withNavBar: true,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 10.h,
        ),
        children: [
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.icons.iconProfile1.path,
                            width: 32.w,
                            height: 32.h,
                          ),
                          10.widthBox,
                          Text(
                            'عبد الرحمن محمد',
                            style: context.textTheme.white14w700,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.icons.bg.path,
                            width: 29.w,
                            height: 29.h,
                          ),
                          10.widthBox,
                          Text(
                            'مبتدئ',
                            style: context.textTheme.white14w700,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  // color: Colors.red,
                  child: SvgPicture.asset(
                    Assets.icons.home1.path,
                    width: 40.w,
                    height: 60.h,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'شغل مخك',
                      style: context.textTheme.white25w800,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          10.heightBox,

          /// 1
          WSharedContainer(
            fullHeight: 152.h,
            childHeight: 130.h,
            childWidth: 372.w,
            buttonHeight: 44.h,
            button: WAppButton(title: 'العب', onTap: () {}),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الألعاب',
                  style: context.textTheme.blue18w700,
                ),
                16.heightBox,
                Text(
                  'الألعاب 0',
                  style: context.textTheme.grey14w500,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          10.heightBox,

          /// 2
          WSharedContainer(
            fullHeight: 175.h,
            childHeight: 153.h,
            childWidth: 372.w,
            buttonHeight: 44.h,
            button: WAppButton(
              title: 'اطلع على الألعاب',
              onTap: () {
                Modular.to.navigate(RoutesNames.home.subscriptions);
              },
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'باقات الألعاب',
                  style: context.textTheme.blue18w700,
                ),
                16.heightBox,
                Text(
                  ' كل مستخدم جديد يحصل علي لعبة واحدة مجانية وتقدر تختار من أقسامنا الموجودة',
                  style: context.textTheme.grey14w500,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          10.heightBox,

          /// 3
          WSharedContainer(
            fullHeight: 176.h,
            childHeight: 176.h,
            childWidth: 372.w,
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 12.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'وسائل المساعدة',
                  style: context.textTheme.blue18w700,
                ),
                16.heightBox,
                Container(
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: context.theme.colorScheme.selectBackground,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: helpWays
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              setState(() {
                                // deselect all
                                for (var element in helpWays) {
                                  element.isSelected = false;
                                }
                                e.isSelected = !e.isSelected;
                              });
                            },
                            child: Text(
                              e.title,
                              style: e.isSelected ? context.textTheme.mint14w700 : context.textTheme.grey14w700,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                16.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.icons.vaadinTimer.path,
                      width: 20.w,
                      height: 20.h,
                    ),
                    10.widthBox,
                    Text(
                      'عندكم 15 ثانية تغشون فيها',
                      style: context.textTheme.blue16w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
