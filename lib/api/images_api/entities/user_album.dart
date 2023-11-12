import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_album.g.dart';

@JsonSerializable()
class UserAlbum {
  int userId;
  int id;

  UserAlbum({
    required this.userId,
    required this.id,
  });

  factory UserAlbum.fromJson(Map<String, dynamic> json) =>
      _$UserAlbumFromJson(json);
  Map<String, dynamic> toJson() => _$UserAlbumToJson(this);
}
