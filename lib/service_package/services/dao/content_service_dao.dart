import '../../model/content.dart';

abstract class ContentDAO{
  Future<List<Content>> getAllContents({
    String? status,
  });
  Future<List<Content>> getSearchContents({required String searchText});
  Future<Content> getContentById({required String contentId});
}