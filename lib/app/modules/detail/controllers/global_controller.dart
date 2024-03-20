import 'package:get/get.dart';

class GlobalController extends GetxController {
  //TODO: Implement DetailController

  final count = 0.obs;
  final category = "All".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
