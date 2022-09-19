import 'package:json_annotation/json_annotation.dart';

/// GJ 2022/9/8 15:43
///
part 'AddCompanyBin.g.dart';

@JsonSerializable()
class AddCompanyBin{
  String headImg;
  String name;
  String companyName;
  String departmentName;
  String departmentId;//部门ID
  int companyId;
  String reason;//原因
  String inviterName;
  String inviterId;//邀请人ID
  String status;//审批状态0待处理，1已通过，2已拒绝
  String refuseReason;//拒绝原因
  String nameAgreeRefuse;//拒绝或通过人
  String idAgreeRefuse;//拒绝或通过人Id
  String phone;//手机号
  int areaCode;
  String timeAgreeRefuse;//拒绝或通过时间


  AddCompanyBin(
      this.headImg,
      this.name,
      this.companyName,
      this.departmentName,
      this.departmentId,
      this.companyId,
      this.reason,
      this.inviterName,
      this.inviterId,
      this.status,
      this.refuseReason,
      this.nameAgreeRefuse,
      this.idAgreeRefuse,this.phone,this.areaCode,this.timeAgreeRefuse);
  factory AddCompanyBin.fromJson(Map<String, dynamic> json) =>
      _$AddCompanyBinFromJson(json);

  Map<String, dynamic> toJson() => _$AddCompanyBinToJson(this);

  static String getClassName() => "AddCompanyBin"; //用于存储token对象
}
