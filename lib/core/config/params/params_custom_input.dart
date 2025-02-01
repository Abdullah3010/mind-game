import 'package:flutter/material.dart';
import 'package:mind_game/core/config/params/custom_pin_code_options.dart';

class ParamsCustomInput {
  final String? hint;
  final String? label;
  final bool isRequired;
  final String? customRequiredMessage;
  final FocusNode? nextFocusNode;
  final List<String? Function(String?)?>? validators;
  final void Function(String)? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final bool enabled;
  final CustomPinCodeOptions? pinCodeOptions;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;

  const ParamsCustomInput({
    this.hint,
    this.label,
    this.isRequired = false,
    this.customRequiredMessage,
    this.nextFocusNode,
    this.validators,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.onChanged,
    this.enabled = true,
    this.pinCodeOptions,
    this.maxLength,
    this.maxLines,
    this.minLines,
  });
}
