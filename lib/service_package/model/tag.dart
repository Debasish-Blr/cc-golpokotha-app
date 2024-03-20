import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'tag.g.dart';

@JsonSerializable(explicitToJson: true)
class Tag{
  @JsonKey(name: "id")
String? documentId;
String? name;
 @JsonKey(name: "updated_at")
  String? updateAt;
    @JsonKey(name: "created_at")
  String? createdAt;
  String? status;
    @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;
  Tag({this.documentId, this.name, this.updateAt, this.createdAt,
  this.status,});
    factory Tag.fromJson(Map<String, dynamic> json) =>
      _$TagFromJson(json);
  Map<String, dynamic> toJson() => _$TagToJson(this);
}