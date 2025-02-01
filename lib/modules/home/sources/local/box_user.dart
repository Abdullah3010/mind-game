import 'package:mind_game/core/utils/hive_box_base.dart';
import 'package:mind_game/modules/auth/data/models/m_user.dart';

class BoxUser extends HiveBoxBase<MUser> {
  BoxUser() : super('users', MUserAdapter());
}
