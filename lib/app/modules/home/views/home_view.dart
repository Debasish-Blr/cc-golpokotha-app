import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/home/views/_components/category_page.dart';
import 'package:golpokotha/app/modules/home/views/widgets/all_page.dart';
import 'package:golpokotha/app/modules/home/views/widgets/bottomNavBar.dart';
import 'package:golpokotha/app/modules/home/views/widgets/logo_section.dart';
import '../controllers/home_controller.dart';
import 'widgets/chip.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    paintOnChangeCategory(){
      if(controller.selectedCategory.value=="All"){
        return const AllPage();
      }else{
        return const CategoryPage();
      }
    }

    return Scaffold(
      backgroundColor: darkBlack,
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopLogo(),
            const ChipList(),
            Obx( () {
                return paintOnChangeCategory();
              }
            )
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavBar(),
    );
  }
}
