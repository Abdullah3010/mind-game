import 'package:mind_game/core/services/forms/base_form_controller.dart';
import 'package:mind_game/core/widgets/forms/w_email_field.dart';
import 'package:mind_game/core/widgets/forms/w_phone_field.dart';
import 'package:mind_game/core/widgets/forms/w_text_field.dart';

class FEditProfile extends BaseFormController {
  late WTextField fullNameField;
  late WEmailField emailField;
  late WPhoneField phoneField;

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
  }
}
