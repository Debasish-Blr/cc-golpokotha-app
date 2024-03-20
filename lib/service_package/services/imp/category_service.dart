
import '../../helper/api.dart';
import '../../model/category.dart';
import '../../provider/provider.dart';
import '../dao/category_service_dao.dart';

class CategoryService extends CategoryDAO {
  @override
  Future<List<Category>> getAllCategories({
    String? status,
  }) async {
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/category/getAll?",
        query: status != null ? {"status": status} : null,
      );
      print(status);
      List<Category> catlist =
          response.map<Category>((e) => Category.fromJson(e)).toList();
      return catlist;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Category>> searchCategory({required String searchText}) async {
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/category/search",
        query: {"searchText": searchText},
      );
      List<Category> catlist =
          response.map<Category>((e) => Category.fromJson(e)).toList();
      return catlist;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<Category> getCategoryById({required String categoryId}) async {
    try {
      final response = await Provider().getApiCall(
        api: "$baseURL/category/$categoryId",
      );
      return Category.fromJson(response);
    } catch (e) {
      throw e.toString();
    }
  }
}
