import 'package:flutter/material.dart';
import 'package:mind_game/core/config/params/params_custom_input.dart';
import 'package:mind_game/core/utils/input_field_validator.dart';
import 'package:mind_game/core/widgets/forms/base_form_field.dart';
import 'package:mind_game/core/widgets/forms/w_shared_field.dart';

class WEmailField extends BaseFormField {
  WEmailField({
    super.isRequired = true,
    super.hint = '',
    super.label = '',
    super.validators = const [InputFieldValidator.validateEmail],
    super.fieldName = '',
  });

  @override
  Widget buildField(BuildContext context, {ParamsCustomInput? param}) {
    return WSharedField(
      controller: controller,
      focusNode: focusNode,
      hint: hint,
      label: label,
      onValidate: validate,
      keyboardType: TextInputType.emailAddress,
      textInputAction: textInputAction,
      onChanged: param?.onChanged,
    );
  }
}
