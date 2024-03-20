import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category.g.dart';

@JsonSerializable(explicitToJson: true)
class Category {
  @JsonKey(name:"id")
  String? documentId;
  String? name;
  String? status;
  @JsonKey(name:"created_at")
  String? createdAt;
  @JsonKey(name:"updated_at")
  String? updatedAt;
  String? translation;
  @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;

  Category({
    this.documentId,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.translation,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  factory Category.fromSnapshot(DocumentSnapshot snapshot) {
    final category = Category.fromJson(snapshot.data() as Map<String, dynamic>);
    category.reference = snapshot.reference;
    category.documentId = snapshot.reference.id;
    return category;
  }
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
