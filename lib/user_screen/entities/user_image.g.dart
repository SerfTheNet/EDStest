// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserImage _$UserImageFromJson(Map<String, dynamic> json) => UserImage(
      id: json['id'] as int,
      albumId: json['albumId'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as int?,
    );

Map<String, dynamic> _$UserImageToJson(UserImage instance) => <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
