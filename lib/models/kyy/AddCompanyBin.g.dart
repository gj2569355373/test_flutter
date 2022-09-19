// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddCompanyBin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCompanyBin _$AddCompanyBinFromJson(Map<String, dynamic> json) {
  return AddCompanyBin(
    json['headImg'] as String,
    json['name'] as String,
    json['companyName'] as String,
    json['departmentName'] as String,
    json['departmentId'] as String,
    json['companyId'] as int,
    json['reason'] as String,
    json['inviterName'] as String,
    json['inviterId'] as String,
    json['status'] as String,
    json['refuseReason'] as String,
    json['nameAgreeRefuse'] as String,
    json['idAgreeRefuse'] as String,
    json['phone'] as String,
    json['areaCode'] as int,
    json['timeAgreeRefuse'] as String,
  );
}

Map<String, dynamic> _$AddCompanyBinToJson(AddCompanyBin instance) =>
    <String, dynamic>{
      'headImg': instance.headImg,
      'name': instance.name,
      'companyName': instance.companyName,
      'departmentName': instance.departmentName,
      'departmentId': instance.departmentId,
      'companyId': instance.companyId,
      'reason': instance.reason,
      'inviterName': instance.inviterName,
      'inviterId': instance.inviterId,
      'status': instance.status,
      'refuseReason': instance.refuseReason,
      'nameAgreeRefuse': instance.nameAgreeRefuse,
      'idAgreeRefuse': instance.idAgreeRefuse,
      'phone': instance.phone,
      'areaCode': instance.areaCode,
      'timeAgreeRefuse': instance.timeAgreeRefuse,
    };
