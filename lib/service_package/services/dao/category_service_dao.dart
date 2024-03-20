import '../../model/category.dart';

abstract class CategoryDAO {
  Future<List<Category>> getAllCategories({String? status});
  Future<List<Category>> searchCategory({required String searchText});
  Future<Category> getCategoryById({required String categoryId});
}
