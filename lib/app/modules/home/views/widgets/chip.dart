import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/home/controllers/home_controller.dart';
import 'package:golpokotha/app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../detail/controllers/global_controller.dart';

class ChipList extends StatefulWidget {
  const ChipList({super.key});

  @override
  State<ChipList> createState() => _ChipListState();
}

class _ChipListState extends State<ChipList> {
  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx( () {
        return SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.chips.length,
            itemBuilder: (context, index) {
              String chip = controller.chips[index];
              return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: ChipBox(
                    chipName: chip,
                    active: controller.selectedCategory.value == chip,
                    onTap: () {
                      controller.selectedCategory.value = chip;
                      // chip == 'All' ? Get.toNamed(AppPages.HOME) : Get.toNamed(AppPages.LISTPAGE);
                      print(controller.selectedCategory.value);
                      print(controller.selectedCategory.value == chip);
                    },
                  ),
                );
            },
          ),
        );
      }
    );
  }
}

class ChipBox extends StatelessWidget {
  final void Function()? onTap;

  final bool active;
  const ChipBox(
      {super.key, this.onTap, required this.chipName, required this.active});
  final String chipName;
  _getBackgroundColor() {
    return active ? primaryColor : darkBlack;
  }

  _getTextColor() {
    return !active ? primaryColor : darkBlack;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        // margin: const EdgeInsets.only(left: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: _getBackgroundColor(),
            border: Border.all(width: 1, color: tertiaryText)),
        child: Text(
          chipName,
          style: TextStyle(
              color: _getTextColor(),
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
