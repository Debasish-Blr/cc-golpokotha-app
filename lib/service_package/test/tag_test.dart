
import 'package:flutter_test/flutter_test.dart';

import '../galpokathat_services.dart';
import '../model/tag.dart';

void main() {
  final tagfunctest = GalpokathaService.tagsevrfunc;
  test("Get All Tags", () async {
    List<Tag> tagsList = await tagfunctest.getAllTags(status: 'inactive');
    print(tagsList.length);
    for (int i = 0; i < tagsList.length; i++) {
      print(tagsList[i].toJson());
    }
  });
  test("Search Tags", () async{
    List<Tag> cntList = await tagfunctest.getSearchTag(searchText: 'test');
    print(cntList.length);
    for(int i=0;i<cntList.length;i++){
      print(cntList[i].toJson());
    }
  });
  test("Tags By Id", () async{
    Tag cntObj = await tagfunctest.getTagById(tagId: 'b531a84d-5132-4e17-a622-7c51522199d6');
    print(cntObj.toJson());
  });
}
