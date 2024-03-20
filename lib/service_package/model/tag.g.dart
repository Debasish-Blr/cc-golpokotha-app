// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      documentId: json['id'] as String?,
      name: json['name'] as String?,
      updateAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.documentId,
      'name': instance.name,
      'updated_at': instance.updateAt,
      'created_at': instance.createdAt,
      'status': instance.status,
    };
