import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address.g.dart';

@JsonSerializable()
class UserAddress {
  final String? city;
  final String? street;
  final String? suite;

  UserAddress({
    this.city,
    this.street,
    this.suite,
  });

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);
  Map<String, dynamic> toJson() => _$UserAddressToJson(this);

  @override
  String toString() {
    return [
      city,
      street,
      suite,
    ].where((element) => element != null).join(', ');
  }
}
