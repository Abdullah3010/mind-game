import 'package:hive/hive.dart';

part 'm_user.g.dart';

@HiveType(typeId: 0)
class MUser {
  @HiveField(0)
  String? uid;
  @HiveField(1)
  String? fullName;
  @HiveField(2)
  final String? email;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  String? token;

  MUser({
    this.uid,
    this.fullName,
    this.email,
    this.phone,
    this.token,
  });

  factory MUser.fromJson(Map<String, dynamic> json) {
    return MUser(
      fullName: json['fullName'],
      email: json['email'],
      phone: json['phone'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName ?? '',
      'email': email ?? '',
      'phone': phone ?? '',
    };
  }
}
