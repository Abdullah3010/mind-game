import 'package:mind_game/core/services/forms/base_form_controller.dart';
import 'package:mind_game/core/widgets/forms/w_password_field.dart';

class FChangePassword extends BaseFormController {
  late WPasswordField currentPasswordField;
  late WPasswordField newPasswordField;
  late WPasswordField confirmNewPasswordField;

  @override
  void init() {
    currentPasswordField = WPasswordField(
      hint: 'Password',
    );
    newPasswordField = WPasswordField(
      hint: 'Password',
    );
    confirmNewPasswordField = WPasswordField(
      hint: 'Confirm Password',
    );
  }

  @override
  bool validate() {
    return formKey.currentState!.validate();
  }

  @override
  void clear() {
    currentPasswordField.clear();
    newPasswordField.clear();
    confirmNewPasswordField.clear();
  }
}
