import 'package:get/get.dart';

import '../../../data/chip_data.dart';
import '../../../data/colors.dart';

class HomeController extends GetxController {
  List<ChipData> chips = [
    ChipData(
      'All',
      primaryColor,
      darkBlack,
    ),
    ChipData(
      'Forklore',
      darkBlack,
      primaryColor,
    ),
    ChipData(
      'Classical',
      darkBlack,
      primaryColor,
    ),
    ChipData(
      'Horror',
      darkBlack,
      primaryColor,
    ),
    ChipData(
      'Comedy',
      darkBlack,
      primaryColor,
    ),
    ChipData(
      'Fiction',
      darkBlack,
      primaryColor,
    )
  ];

  @override
  void onInit() {
    getData();
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

  void getData() {}
}
