// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterprise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Enterprise _$EnterpriseFromJson(Map<String, dynamic> json) {
  return Enterprise(
    json['access_token'] as String,
    json['token_type'] as String,
    json['refresh_token'] as String,
    json['expires_in'] as int,
    json['scope'] as String,
    nowTime: json['nowTime'] as int,
  );
}

Map<String, dynamic> _$EnterpriseToJson(Enterprise instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'scope': instance.scope,
      'nowTime': instance.nowTime,
    };
