import 'package:json_annotation/json_annotation.dart';

/// GJ 2022/9/7 16:41
///
part 'enterprise.g.dart';

@JsonSerializable()
class Enterprise {
  @JsonKey(name: 'access_token')
  String accessToken;
  @JsonKey(name: 'token_type')
  String tokenType;
  @JsonKey(name: 'refresh_token')
  String refreshToken;
  @JsonKey(name: 'expires_in')
  int expiresIn;
  String scope;
  int nowTime;
  @JsonKey(ignore: true)
  String? userId;

  Enterprise(this.accessToken, this.tokenType, this.refreshToken,
      this.expiresIn, this.scope,
      {required this.nowTime});

  factory Enterprise.fromJson(Map<String, dynamic> json) =>
      _$EnterpriseFromJson(json);

  Map<String, dynamic> toJson() => _$EnterpriseToJson(this);

  static String getClassName() => "Enterprise"; //用于存储token对象

}