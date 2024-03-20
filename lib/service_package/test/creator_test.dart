import 'package:flutter_test/flutter_test.dart';

import '../galpokathat_services.dart';
import '../model/creator.dart';

void main() {
    final ctrTestFun = GalpokathaService.ctrsevrfunc;
  test("Get all creators", () async{
    List<Creator> ctrList = await ctrTestFun.getAllCreators(status: 'inactive',);
    print(ctrList.length);
    for(int i=0;i<ctrList.length;i++){
      print(ctrList[i].toJson());
    }
  });
  test("Creators by search", () async{
    List<Creator> ctrList = await ctrTestFun.getSearchCreator(searchText: 'Madhumita');
     print(ctrList.length);
    for(int i=0;i<ctrList.length;i++){
      print(ctrList[i].toJson());
    }
  });
  test("Creators by type", () async{
   List<Creator> ctrList = await ctrTestFun.getAllCreatorsByType(creatorType: 'narrator');
     print(ctrList.length);
    for(int i=0;i<ctrList.length;i++){
      print(ctrList[i].toJson());
    } 
  });
   test("Creators finds by id", () async{
   Creator ctrList = await ctrTestFun.gerCreatorById(creatorId: '095b7e33-1450-4430-bac6-0fc7a9e2e3ba');
    print(ctrList.toJson());
  });
}
