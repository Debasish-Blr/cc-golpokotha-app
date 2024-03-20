import '../../model/tag.dart';

abstract class TagServiceDao{
  Future<List<Tag>> getAllTags({String? status});
  Future<List<Tag>> getSearchTag({required String searchText});
  Future<Tag> getTagById({required String tagId});
}