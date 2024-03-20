import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import '../controllers/list_page_controller.dart';

class ListPageView extends GetView<ListPageController> {
  const ListPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const TopLogo(),

            Expanded(
              child: ListView(
                children: [
                  // const ChipList(),
                  // const AddSection(),
                  // const Seemore(
                  //   name: 'Recently Added',
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // const Content(),
                  // const Seemore(
                  //   name: 'Top Creators',
                  // ),
                  // const AuthorList(),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:  BottomNavBar(),
    );
  }
}
