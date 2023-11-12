import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_image.g.dart';

@JsonSerializable()
class UserImage {
  final int id;
  final int? albumId;
  final String? title;
  final String url;
  final String? thumbnailUrl;

  UserImage({
    required this.id,
    required this.albumId,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory UserImage.fromJson(Map<String, dynamic> json) =>
      _$UserImageFromJson(json);

  Map<String, dynamic> toJson() => _$UserImageToJson(this);
}
