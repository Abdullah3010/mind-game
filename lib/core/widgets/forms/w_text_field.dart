import 'package:flutter/material.dart';
import 'package:mind_game/core/config/params/params_custom_input.dart';
import 'package:mind_game/core/widgets/forms/base_form_field.dart';
import 'package:mind_game/core/widgets/forms/w_shared_field.dart';

class WTextField extends BaseFormField {
  WTextField({
    super.isRequired = true,
    super.hint = '',
    super.label = '',
    super.fieldName = '',
  });

  @override
  Widget buildField(BuildContext context, {ParamsCustomInput? param}) {
    return WSharedField(
      controller: controller,
      focusNode: focusNode,
      hint: hint,
      label: label,
      prefixIcon: param?.prefixIcon,
      suffixIcon: param?.suffixIcon,
      onValidate: validate,
      keyboardType: TextInputType.text,
      textInputAction: textInputAction,
      onChanged: param?.onChanged,
    );
  }
}
