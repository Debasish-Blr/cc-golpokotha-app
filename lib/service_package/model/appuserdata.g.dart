// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appuserdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) => AppUser(
      documentId: json['id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      language: json['language'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birthDate'] as String?,
      userType: json['userType'] as String?,
      favoriteGenres: (json['favoriteGenres'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      favorites: (json['favorites'] as List<dynamic>?)
          ?.map((e) => Favorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      incompleteStories: (json['incompleteStories'] as List<dynamic>?)
          ?.map((e) => IncompleteStory.fromJson(e as Map<String, dynamic>))
          .toList(),
      completedStories: (json['completedStories'] as List<dynamic>?)
          ?.map((e) => CompletedStory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'id': instance.documentId,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'language': instance.language,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'userType': instance.userType,
      'favoriteGenres': instance.favoriteGenres,
      'favorites': instance.favorites?.map((e) => e.toJson()).toList(),
      'incompleteStories':
          instance.incompleteStories?.map((e) => e.toJson()).toList(),
      'completedStories':
          instance.completedStories?.map((e) => e.toJson()).toList(),
    };

Favorite _$FavoriteFromJson(Map<String, dynamic> json) => Favorite(
      storyId: json['storyId'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$FavoriteToJson(Favorite instance) => <String, dynamic>{
      'storyId': instance.storyId,
      'updatedAt': instance.updatedAt,
    };

IncompleteStory _$IncompleteStoryFromJson(Map<String, dynamic> json) =>
    IncompleteStory(
      storyId: json['storyId'] as String?,
      chapterId: json['chapterId'] as String?,
      lastSec: json['lastSec'] as int?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$IncompleteStoryToJson(IncompleteStory instance) =>
    <String, dynamic>{
      'storyId': instance.storyId,
      'chapterId': instance.chapterId,
      'lastSec': instance.lastSec,
      'updatedAt': instance.updatedAt,
    };

CompletedStory _$CompletedStoryFromJson(Map<String, dynamic> json) =>
    CompletedStory(
      storyId: json['storyId'] as String?,
      name: json['name'] as String?,
      chapterId: json['chapterId'] as String?,
    );

Map<String, dynamic> _$CompletedStoryToJson(CompletedStory instance) =>
    <String, dynamic>{
      'storyId': instance.storyId,
      'name': instance.name,
      'chapterId': instance.chapterId,
    };
