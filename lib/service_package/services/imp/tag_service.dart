import '../../helper/api.dart';
import '../../model/tag.dart';
import '../../provider/provider.dart';
import '../dao/tag_service_dao.dart';

class TagService extends TagServiceDao{
  @override
  Future<List<Tag>> getAllTags({String? status}) async{
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/tag/getAll?",
        query: status != null ? {"status": status} : null,
      );
      print(status);
      List<Tag> catlist =
          response.map<Tag>((e) => Tag.fromJson(e)).toList();
      return catlist;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Tag>> getSearchTag({required String searchText}) async{
   try {
      final response = await Provider().getApiCall(
        api: "$baseURL/tag/search",
        query: {"searchText": searchText},
      );
      List<Tag> catlist =
          response.map<Tag>((e) => Tag.fromJson(e)).toList();
      return catlist;
    } catch (e) {
      throw e.toString();
  }}

  @override
  Future<Tag> getTagById({required String tagId}) async{
   try {
      final response = await Provider().getApiCall(
        api: "$baseURL/tag/$tagId",
      );
      return Tag.fromJson(response);
    } catch (e) {
      throw e.toString();
    }
  }
}