// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Password _$PasswordFromJson(Map<String, dynamic> json) => Password(
      id: json['id'] as int?,
      url: json['url'] as String?,
      key: json['password'] as String?,
      username: json['username'] as String?,
      title: json['friendlyName'] as String?,
    );

Map<String, dynamic> _$PasswordToJson(Password instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'password': instance.key,
      'username': instance.username,
      'friendlyName': instance.title,
    };
