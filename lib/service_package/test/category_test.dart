
import 'package:flutter_test/flutter_test.dart';

import '../galpokathat_services.dart';
import '../model/category.dart';

void main() async{
  final cattestfunc = GalpokathaService.catservfunc;
  test("Get all Category", () async {
    List<Category> catlist = await cattestfunc.getAllCategories();
    print(catlist.length);
    for(int i=0;i<catlist.length;i++){
      print(catlist[i].toJson());
    }
  });
  test("Search Category", () async{
    List<Category> catlist = await cattestfunc.searchCategory(searchText: "Mix");
    print(catlist.length);
    for(int i=0;i<catlist.length;i++){
      print(catlist[i].toJson());
    }
  });
  test("Get Category by Id", () async{
    Category cat = await cattestfunc.getCategoryById(categoryId: "927a45fe-4c62-4112-80b9-9757392e5e9d");
    print(cat.toJson());
  });
}
