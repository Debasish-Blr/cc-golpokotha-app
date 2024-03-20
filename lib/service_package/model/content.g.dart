// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentThumbNails _$ContentThumbNailsFromJson(Map<String, dynamic> json) =>
    ContentThumbNails(
      portrait1: json['portrait1'] as String?,
      portrait2: json['portrait2'] as String?,
      landscape1: json['landscape1'] as String?,
      landscape2: json['landscape2'] as String?,
    );

Map<String, dynamic> _$ContentThumbNailsToJson(ContentThumbNails instance) =>
    <String, dynamic>{
      'portrait1': instance.portrait1,
      'portrait2': instance.portrait2,
      'landscape1': instance.landscape1,
      'landscape2': instance.landscape2,
    };

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      documentId: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : ContentThumbNails.fromJson(
              json['thumbnails'] as Map<String, dynamic>),
      narrators: (json['narrators'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      reviews:
          (json['reviews'] as List<dynamic>?)?.map((e) => e as String).toList(),
      chapters: json['chapters'] as Map<String, dynamic>?,
    )..rating = json['rating'] as int?;

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'id': instance.documentId,
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'categories': instance.categories,
      'status': instance.status,
      'thumbnails': instance.thumbnails?.toJson(),
      'narrators': instance.narrators,
      'authors': instance.authors,
      'created_at': instance.createdAt,
      'rating': instance.rating,
      'updated_at': instance.updatedAt,
      'reviews': instance.reviews,
      'chapters': instance.chapters,
    };

FileModel _$FileModelFromJson(Map<String, dynamic> json) => FileModel(
      fileName: json['file'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$FileModelToJson(FileModel instance) => <String, dynamic>{
      'file': instance.fileName,
    };
