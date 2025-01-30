import 'package:mind_game/core/services/forms/base_form_controller.dart';
import 'package:mind_game/core/widgets/forms/w_email_field.dart';
import 'package:mind_game/core/widgets/forms/w_password_field.dart';
import 'package:mind_game/core/widgets/forms/w_phone_field.dart';
import 'package:mind_game/core/widgets/forms/w_text_field.dart';

class FRegister extends BaseFormController {
  late WTextField fullNameField;
  late WEmailField emailField;
  late WPhoneField phoneField;
  late WPasswordField passwordField;
  late WPasswordField confirmPasswordField;
  @override
  void init() {
    fullNameField = WTextField(
      hint: 'Full Name',
    );
    emailField = WEmailField(
      hint: 'Email',
    );
    phoneField = WPhoneField(
      hint: 'Phone',
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
    fullNameField.clear();
    emailField.clear();
    phoneField.clear();
    passwordField.clear();
    confirmPasswordField.clear();
  }
}
