
import 'package:flutter_test/flutter_test.dart';

import '../galpokathat_services.dart';
import '../model/content.dart';

void main() {
  final cntTestFun = GalpokathaService.cntservfunc;
  test("Get all content", () async{
    List<Content> cntList = await cntTestFun.getAllContents();
    print(cntList.length);
    for(int i=0;i<cntList.length;i++){
      print(cntList[i].toJson());
    }
  });
  test("Search Contents", () async{
    List<Content> cntList = await cntTestFun.getSearchContents(searchText: 'you');
    print(cntList.length);
    for(int i=0;i<cntList.length;i++){
      print(cntList[i].toJson());
    }
  });
  test("Content By Id", () async{
    Content cntObj = await cntTestFun.getContentById(contentId: '555c43f3-f6cf-4cd7-aed4-ca752734aac8');
    print(cntObj.toJson());
  });
}