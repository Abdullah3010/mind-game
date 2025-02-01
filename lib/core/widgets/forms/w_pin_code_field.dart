import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/config/params/params_custom_input.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';
import 'package:mind_game/core/widgets/forms/base_form_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class WPinCodeField extends BaseFormField {
  WPinCodeField({
    super.isRequired = true,
    super.label = '',
    super.hint = '',
    this.errorController,
  });

  StreamController<ErrorAnimationType>? errorController;

  @override
  Widget buildField(BuildContext context, {ParamsCustomInput? param}) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PinCodeTextField(
        enabled: true,
        appContext: context,
        controller: controller,
        focusNode: focusNode,
        length: 4,
        animationType: AnimationType.fade,
        keyboardType: TextInputType.number,
        textStyle: context.textTheme.blue16w500,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15.r),
          fieldHeight: 60,
          fieldWidth: 60,
          inactiveFillColor: Colors.white,
          disabledBorderWidth: 1.5,
          selectedFillColor: Colors.white,
          errorBorderColor: Colors.red,
          activeColor: Colors.grey.shade300,
          disabledColor: context.theme.colorScheme.blue,
          inactiveColor: context.theme.colorScheme.blue.withValues(alpha: 0.5),
          activeFillColor: Colors.white,
          selectedColor: context.theme.colorScheme.blue,
          activeBorderWidth: 1,
          borderWidth: 1,
          inactiveBorderWidth: 1,
          selectedBorderWidth: 1.5,
        ),
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        errorAnimationController: errorController,
        onCompleted: param?.pinCodeOptions?.onCompleted,
      ),
    );
  }
}
