// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
      documentId: json['id'] as String?,
      name: json['name'] as String?,
      imgURL: json['imgURL'] as String?,
      bio: json['bio'] as String?,
      totalCount: json['totalCount'] as int?,
      creatorType: json['creatorType'] as String?,
      totalListens: json['totalListens'] as int?,
      social: json['social'] == null
          ? null
          : SocialHandles.fromJson(json['social'] as Map<String, dynamic>),
      updateAt: json['updated_at'] as String?,
      status: json['status'] as String?,
      likes: json['likes'] as int?,
      createdAt: json['created_at'] as String?,
      translations: json['translations'] as String?,
    );

Map<String, dynamic> _$CreatorToJson(Creator instance) => <String, dynamic>{
      'id': instance.documentId,
      'name': instance.name,
      'imgURL': instance.imgURL,
      'bio': instance.bio,
      'totalCount': instance.totalCount,
      'creatorType': instance.creatorType,
      'totalListens': instance.totalListens,
      'social': instance.social?.toJson(),
      'updated_at': instance.updateAt,
      'status': instance.status,
      'likes': instance.likes,
      'created_at': instance.createdAt,
      'translations': instance.translations,
    };

SocialHandles _$SocialHandlesFromJson(Map<String, dynamic> json) =>
    SocialHandles(
      faceBook: json['faceBook'] as String?,
      instagram: json['instagram'] as String?,
      twitter: json['twitter'] as String?,
      reddit: json['reddit'] as String?,
      other: json['other'] as String?,
    );

Map<String, dynamic> _$SocialHandlesToJson(SocialHandles instance) =>
    <String, dynamic>{
      'faceBook': instance.faceBook,
      'instagram': instance.instagram,
      'twitter': instance.twitter,
      'reddit': instance.reddit,
      'other': instance.other,
    };
