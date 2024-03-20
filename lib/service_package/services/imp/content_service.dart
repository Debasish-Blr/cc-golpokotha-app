
import '../../helper/api.dart';
import '../../model/content.dart';
import '../../provider/provider.dart';
import '../dao/content_service_dao.dart';

class ContentService extends ContentDAO {
  @override
  Future<List<Content>> getAllContents({
    String? status,
  }) async {
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/content/getAll?",
        query: status != null ? {"status": status} : null,
      );
      List<Content> contentList = response.map<Content>((e) => Content.fromJson(e)).toList();
      return contentList;
    } catch (e) {
      throw e.toString();
    }
  }
  
  @override
  Future<List<Content>> getSearchContents({required String searchText}) async{
     try {
      final response = await Provider().getApiCall(
        api: "$baseURL/content/search",
        query: {"searchText": searchText},
      );
      List<Content> contentList =
          response.map<Content>((e) => Content.fromJson(e)).toList();
      return contentList;
    } catch (e) {
      throw e.toString();
    }
  }
  
  @override
  Future<Content> getContentById({required String contentId}) async{
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/content/$contentId",
      );
      return Content.fromJson(response);
    } catch (e) {
      throw e.toString();
    }
  }
}
