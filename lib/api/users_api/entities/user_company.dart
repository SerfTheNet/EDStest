import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_company.g.dart';

@JsonSerializable()
class UserCompany {
  String name;

  UserCompany(this.name);

  factory UserCompany.fromJson(Map<String, dynamic> json) =>
      _$UserCompanyFromJson(json);
  Map<String, dynamic> toJson() => _$UserCompanyToJson(this);
}
