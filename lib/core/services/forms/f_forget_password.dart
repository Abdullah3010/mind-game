import 'package:mind_game/core/services/forms/base_form_controller.dart';
import 'package:mind_game/core/widgets/forms/w_email_field.dart';
import 'package:mind_game/core/widgets/forms/w_password_field.dart';
import 'package:mind_game/core/widgets/forms/w_pin_code_field.dart';

class FForgetPassword extends BaseFormController {
  /// [Step 1]
  late WEmailField emailField;

  /// [Step 2]
  late WPinCodeField pinCodeField;

  /// [Step 3]
  late WPasswordField passwordField;
  late WPasswordField confirmPasswordField;

  @override
  void init() {
    emailField = WEmailField(
      hint: 'Email',
    );
    pinCodeField = WPinCodeField(
      hint: 'Pin Code',
    );
    passwordField = WPasswordField(
      hint: 'Password',
    );
    confirmPasswordField = WPasswordField(
      hint: 'Confirm Password',
    );
  }

  @override
  bool validate() {
    return formKey.currentState!.validate();
  }

  @override
  void clear() {
    emailField.clear();
    pinCodeField.clear();
    passwordField.clear();
    confirmPasswordField.clear();
  }
}
