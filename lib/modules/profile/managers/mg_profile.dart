import 'package:flutter/material.dart';
import 'package:mind_game/core/services/forms/f_change_password.dart';
import 'package:mind_game/core/services/forms/f_edit_profile.dart';

class MgProfile extends ChangeNotifier {
  /// [Edit Profile]
  FEditProfile fEditProfile = FEditProfile();

  /// [Change Password]
  FChangePassword fChangePassword = FChangePassword();
}
