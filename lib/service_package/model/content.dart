import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

enum Status {
  @JsonValue('ACTIVE')
  ACTIVE,
  @JsonValue('INACTIVE')
  INACTIVE,
}

@JsonSerializable(explicitToJson: true)
class ContentThumbNails {
  @JsonKey(name: "portrait1")
  String? portrait1;
  @JsonKey(name: "portrait2")
  String? portrait2;
  @JsonKey(name: "landscape1")
  String? landscape1;
  @JsonKey(name: "landscape2")
  String? landscape2;
  ContentThumbNails({
    this.portrait1,
    this.portrait2,
    this.landscape1,
    this.landscape2,
  });
  factory ContentThumbNails.fromJson(Map<String, dynamic> json) =>
      _$ContentThumbNailsFromJson(json);
  Map<String, dynamic> toJson() => _$ContentThumbNailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Content {
  @JsonKey(name: "id")
  String? documentId;
  String? name;
  String? description;
  List<String>? tags;
  List<String>? categories;
  String? status;
  ContentThumbNails? thumbnails;
  // Map<String, String>? urls;
  List<String>? narrators;
  List<String>? authors;
  @JsonKey(name: "created_at")
  String? createdAt;
  int? rating;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  List<String>? reviews;
  Map<String, dynamic>? chapters;
  @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;
  Content({
    this.documentId,
    this.name,
    this.description,
    this.tags,
    this.categories,
    this.status,
    this.thumbnails,
    // this.urls,
    this.narrators,
    this.authors,
    this.createdAt,
    this.updatedAt,
    this.reviews,
    this.chapters,
  });
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
  Map<String, dynamic> toJson() => _$ContentToJson(this);
}


@JsonSerializable(explicitToJson: true)
class FileModel {
  @JsonKey(name: "file")
  Map<String,dynamic>? fileName;
  FileModel({this.fileName});
  factory FileModel.fromJson(Map<String, dynamic> json) => _$FileModelFromJson(json);
  Map<String, dynamic> toJson() => _$FileModelToJson(this);
}
