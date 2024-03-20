import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/modules/home/views/widgets/add_section.dart';
import 'package:golpokotha/app/modules/home/views/widgets/author_container.dart';
import 'package:golpokotha/app/modules/home/views/widgets/chip.dart';
import 'package:golpokotha/app/modules/home/views/widgets/content_row.dart';
import 'package:golpokotha/app/modules/home/views/widgets/seemore_section.dart';

import '../../controllers/home_controller.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return controller.selectedCategory.value == "All"
        ? Expanded(
            child: ListView(
              children: const [
                AddSection(),
                Seemore(
                  name: 'Recently Added',
                ),
                SizedBox(
                  height: 10,
                ),
                Content(),
                Seemore(
                  name: 'Top Creators',
                ),
                AuthorList(),
              ],
            ),
          )
        : Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
            ),
          );
  }
}
