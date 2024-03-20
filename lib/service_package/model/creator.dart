import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'creator.g.dart';



@JsonSerializable(explicitToJson: true)
class Creator {
  @JsonKey(name: "id")
  String? documentId;
  String? name;
  String? imgURL;
  String? bio;
  int? totalCount;
  String? creatorType;
  int? totalListens;
  SocialHandles? social;
  @JsonKey(name: "updated_at")
  String? updateAt;
  String? status;
  int? likes;
  @JsonKey(name: "created_at")
  String? createdAt;
  String? translations;
  @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;
  Creator({
    this.documentId,
    this.name,
    this.imgURL,
    this.bio,
    this.totalCount,
    this.creatorType,
    this.totalListens,
    this.social,
    this.updateAt,
    this.status,
    this.likes,
    this.createdAt,
    this.translations,
  });
  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);
  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}
@JsonSerializable(explicitToJson: true)
class SocialHandles {
  String? faceBook;
  String? instagram;
  String? twitter;
  String? reddit;
  String? other;
  SocialHandles({
    this.faceBook,
    this.instagram,
    this.twitter,
    this.reddit,
    this.other,
  });
  factory SocialHandles.fromJson(Map<String, dynamic> json) =>
      _$SocialHandlesFromJson(json);
  Map<String, dynamic> toJson() => _$SocialHandlesToJson(this);
}
