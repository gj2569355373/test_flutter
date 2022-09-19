import 'package:json_annotation/json_annotation.dart';
/*
 * create by gj
 * Created in 2020/12/9 3:05 下午
 * description: 外部业务可直接请求的API封装
 * part 'externalRequest.g.dart';
 * 生成fromJson 命令flutter packages pub run build_runner build
 * 如遇These outputs must be removed manually or the build can be run with `--delete-conflicting-outputs`
 * 执行
 * flutter packages pub run build_runner clean
 * flutter packages pub run build_runner build --delete-conflicting-outputs
 *
 * flutter build apk --release
 * flutter build ios --release
 *
 * */
part 'externalRequest.g.dart';

@JsonSerializable()
class TokenModel {
  @JsonKey(name: 'access_token')
  String accessToken;
  @JsonKey(name: 'token_type')
  String tokenType;
  @JsonKey(name: 'refresh_token')
  String refreshToken;
  @JsonKey(name: 'expires_in')
  int expiresIn;
  String scope;
  @JsonKey(ignore: true,defaultValue: "")
  String userId;
  @JsonKey(ignore: true,defaultValue: 0)
  int nowTime;


  TokenModel(
      this.accessToken,
      this.tokenType,
      this.refreshToken,
      this.expiresIn,
      this.scope,
      {this.userId="",this.nowTime=0});
  // TokenModel(this.accessToken, this.tokenType, this.refreshToken,
  //     this.expiresIn, this.scope,
  //     {this.nowTime});

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);

  Map<String, dynamic> toJson() => _$TokenModelToJson(this);

  static String getClassName() => "TokenModel"; //用于存储token对象

}
