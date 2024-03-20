import '../../helper/api.dart';
import '../../model/creator.dart';
import '../../provider/provider.dart';
import '../dao/creator_service_dao.dart';

class CreatorService extends CreatorServiceDAO {
  @override
  Future<List<Creator>> getAllCreators(
      {String? status}) async {
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/creator/getAll?",
        query: status != null
            ? {"status": status}
            : null,
      );
      print(status);
      List<Creator> creatorList =
          response.map<Creator>((e) => Creator.fromJson(e)).toList();
      return creatorList;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Creator> gerCreatorById({required String creatorId}) async {
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/creator/getById/$creatorId",
      );
      return Creator.fromJson(response);
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Creator>> getSearchCreator({required String searchText}) async {
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/creator/search",
        query: {"searchText": searchText},
      );
      List<Creator> contentList =
          response.map<Creator>((e) => Creator.fromJson(e)).toList();
      return contentList;
    } catch (e) {
      throw e.toString();
    }
  }
  
  @override
  Future<List<Creator>> getAllCreatorsByType({String? creatorType}) async{
     try {
      final response = await Provider().getApiCall(
        api: "$baseURL/creator/getAll?",
        query: creatorType != null
            ? {"type": creatorType}
            : null,
      );
      print(creatorType);
      List<Creator> creatorList =
          response.map<Creator>((e) => Creator.fromJson(e)).toList();
      return creatorList;
    } catch (e) {
      throw e.toString();
    }
  }
}
