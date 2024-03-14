import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/home/views/widgets/add_section.dart';
import 'package:golpokotha/app/modules/home/views/widgets/author_container.dart';
import 'package:golpokotha/app/modules/home/views/widgets/bottomNavBar.dart';
import 'package:golpokotha/app/modules/home/views/widgets/chip.dart';
import 'package:golpokotha/app/modules/home/views/widgets/content_row.dart';
import 'package:golpokotha/app/modules/home/views/widgets/logo_section.dart';
import 'package:golpokotha/app/modules/home/views/widgets/seemore_section.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopLogo(),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.chips.length,
                      itemBuilder: (context, index) => ChipBox(
                        chip_name: controller.chips[index].text ?? '',
                        chip_color:
                            controller.chips[index].chipColor ?? darkBlack,
                        text_color:
                            controller.chips[index].textColor ?? primaryColor,
                      ),
                    ),
                  ),
                  const AddSection(),
                  const Seemore(
                    name: 'Recently Added',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Content(),
                  const Seemore(
                    name: 'Top Creators',
                  ),
                  const AuthorList(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
