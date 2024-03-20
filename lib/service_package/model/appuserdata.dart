import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'appuserdata.g.dart';

@JsonSerializable(explicitToJson: true)
class AppUser {
  @JsonKey(name: "id")
  String? documentId;
  String? name;
  String? phone;
  String? email;
  String? language;
  String? gender;
  String? birthDate;
  String? userType;
  List<String>? favoriteGenres;
  List<Favorite>? favorites;
  List<IncompleteStory>? incompleteStories;
  List<CompletedStory>? completedStories;
  @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;

  AppUser({
    this.documentId,
    this.name,
    this.phone,
    this.email,
    this.language,
    this.gender,
    this.birthDate,
    this.userType,
    this.favoriteGenres,
    this.favorites,
    this.incompleteStories,
    this.completedStories,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Favorite {
  String? storyId;
  String? updatedAt;
  @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;

  Favorite({
    this.storyId,
    this.updatedAt,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IncompleteStory {
  String? storyId;
  String? chapterId;
  int? lastSec;
  String? updatedAt;
  @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;

  IncompleteStory({
    this.storyId,
    this.chapterId,
    this.lastSec,
    this.updatedAt,
  });

  factory IncompleteStory.fromJson(Map<String, dynamic> json) =>
      _$IncompleteStoryFromJson(json);
  Map<String, dynamic> toJson() => _$IncompleteStoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CompletedStory {
  String? storyId;
  String? name;
  String? chapterId;
  @JsonKey(ignore: true)
  DocumentReference? reference;
  @JsonKey(ignore: true)
  DocumentSnapshot? documentSnapshot;

  CompletedStory({
    this.storyId,
    this.name,
    this.chapterId,
  });

  factory CompletedStory.fromJson(Map<String, dynamic> json) =>
      _$CompletedStoryFromJson(json);
  Map<String, dynamic> toJson() => _$CompletedStoryToJson(this);
}
