import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/num_ext.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/widgets/w_app_button.dart';
import 'package:mind_game/core/widgets/w_shared_app_bar.dart';
import 'package:mind_game/core/widgets/w_shared_container.dart';
import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:mind_game/modules/home/data/models/m_subscription.dart';

class SNSubscription extends StatelessWidget {
  SNSubscription({super.key});

  final List<MSubscription> subscriptions = [
    MSubscription(title: 'لعبة واحدة', description: 'هذه الباقة تسمح لك بإنشاء  1 لعبة ', price: 25),
    MSubscription(
        title: 'الألعاب 2', description: 'هذه الباقة تسمح لك بإنشاء 2 لعبة اغتنم الفرصة و وفر 10 ريال', price: 40),
    MSubscription(
        title: 'الألعاب 5', description: 'هذه الباقة تسمح لك بإنشاء 5 لعبة اغتنم الفرصة و وفر 50 ريال', price: 75),
  ];

  @override
  Widget build(BuildContext context) {
    return WSharedScaffold(
      withNavBar: true,
      appBar: const WSharedAppBar(
        title: 'باقات الالعاب',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 10.h,
        ),
        children: [
          Text(
            'اختر الباقة الي تفضلها عشان تزيد معرفتك وتستمتع معانا',
            style: context.textTheme.white14w500,
          ),
          16.heightBox,
          Column(
            spacing: 10.h,
            children: subscriptions.map(
              (subscription) {
                return WSharedContainer(
                  fullHeight: 152.h,
                  childHeight: 130.h,
                  childWidth: 372.w,
                  buttonHeight: 44.h,
                  button: WAppButton(
                    title: '${subscription.price} ر.ق  ',
                    textDirection: TextDirection.rtl,
                    onTap: () {},
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        subscription.title,
                        style: context.textTheme.blue18w700,
                      ),
                      12.heightBox,
                      Text(
                        subscription.description,
                        style: context.textTheme.grey14w500,
                        textAlign: TextAlign.center,
                      ),
                      12.heightBox,
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
