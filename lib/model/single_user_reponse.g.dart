// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_user_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleUserResponse _$SingleUserResponseFromJson(Map<String, dynamic> json) {
  return SingleUserResponse()
    ..user = json['data'] == null
        ? null
        : User.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SingleUserResponseToJson(SingleUserResponse instance) =>
    <String, dynamic>{
      'data': instance.user,
    };
