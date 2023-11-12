import 'package:eclipse_test/api/images_api/entities/user_image.dart';
import 'package:eclipse_test/api/users_api/entities/user_address.dart';
import 'package:eclipse_test/api/users_api/entities/user_company.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String? name;
  final UserImage? image;
  final String? username;
  final String? email;
  final UserAddress? address;
  final String? phone;
  final String? website;
  final UserCompany? company;

  User({
    required this.id,
    this.name,
    this.image,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
