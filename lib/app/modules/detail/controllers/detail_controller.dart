import 'package:get/get.dart';
import 'package:golpokotha/service_package/services/imp/content_service.dart';

import '../../../../service_package/model/content.dart';

class DetailController extends GetxController {
  final chapterPlayIndex = '-1'.obs;
  //TODO: Implement DetailControllerfi
  final isPlay = false.obs;
  final count = 0.obs;
  final content = Content().obs;
  final documentId = ''.obs;
  @override
  void onInit() async{
    super.onInit();
    documentId.value = Get.arguments;
    print(documentId.value);
   await getContentDetails();
  }

  getContentDetails() async {
    try {
      
      content.value =
          await ContentService().getContentById(contentId: documentId.value);
      print(content.toJson());
    } catch (e) {
      print("Error");
    }
  }
}
