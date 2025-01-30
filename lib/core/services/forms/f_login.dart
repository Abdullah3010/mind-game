import 'package:mind_game/core/services/forms/base_form_controller.dart';
import 'package:mind_game/core/widgets/forms/w_email_field.dart';
import 'package:mind_game/core/widgets/forms/w_password_field.dart';

class FLogin extends BaseFormController {
  late WEmailField email;

  late WPasswordField password;
  @override
  void init() {
    email = WEmailField(
      hint: 'Email',
    );
    password = WPasswordField(
      hint: 'Password',
    );
  }

  @override
  bool validate() {
    return formKey.currentState!.validate();
  }

  @override
  void clear() {
    email.clear();
    password.clear();
  }
}
