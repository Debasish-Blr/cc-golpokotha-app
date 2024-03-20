import 'package:get/get.dart';
import 'package:golpokotha/service_package/model/category.dart';
import 'package:golpokotha/service_package/model/content.dart';
import 'package:golpokotha/service_package/services/imp/category_service.dart';
import 'package:golpokotha/service_package/services/imp/content_service.dart';
import '../../../data/chip_data.dart';

class HomeController extends GetxController {
  final chips = <String>["All"].obs;
  final selectedCategory = "All".obs;
  final categories = <Category>[].obs;
  final contents = <Content>[].obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  getAllContent() async {
    try {
      contents.clear();
      contents.value = await ContentService().getAllContents(status: 'active');
      // for (int i = 0; i < contents.length; i++) {
      //   var thumbnails = contents[i].thumbnails;
      //   if (thumbnails != null) {
      //     print("Thumbnail for index $thumbnails:");
      //     print("Portrait 1: ${thumbnails.portrait1}");
      //     print("Portrait 2: ${thumbnails.portrait2}");
      //     print("Landscape 1: ${thumbnails.landscape1}");
      //     print("Landscape 2: ${thumbnails.landscape2}");
      //   } else {
      //     print("Thumbnails for index $i is null");
      //   }
      // }
      //  print(contents);
    } catch (e) {
      contents.clear();
    }
  }

  getAllCategories() async {
    try {
      categories.clear();
      categories.value =
          await CategoryService().getAllCategories(status: 'active');
    } catch (e) {
      categories.clear();
    }
  }

  init() async {
    await _getCategories();
    await getAllContent();
  }

  _getCategories() async {
    try {
      categories.clear();
      categories.value =
          await CategoryService().getAllCategories(status: 'active');

      for (var element in categories) {
        chips.add(element.name ?? "");
      }
      print(chips);
    } catch (e) {
      categories.clear();
    }
  }
}
