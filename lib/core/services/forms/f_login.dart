import 'package:mind_game/core/services/forms/base_form_controller.dart';
import 'package:mind_game/core/widgets/forms/w_email_field.dart';
import 'package:mind_game/core/widgets/forms/w_password_field.dart';

class FLogin extends BaseFormController {
  late WEmailField emailField;

  late WPasswordField passwordField;
  @override
  void init() {
    emailField = WEmailField(
      hint: 'Email',
    );
    passwordField = WPasswordField(
      hint: 'Password',
    );
  }

  @override
  bool validate() {
    return formKey.currentState!.validate();
  }

  @override
  void clear() {
    emailField.clear();
    passwordField.clear();
  }
}
