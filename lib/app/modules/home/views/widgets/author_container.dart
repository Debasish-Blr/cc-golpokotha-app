import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/home/controllers/authorController.dart';

class AuthorList extends StatelessWidget {
  const AuthorList({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthorController());
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              controller.authors.length,
              (index) => AuthorChip(
                    image: controller.authors[index].image ?? '',
                    name: controller.authors[index].name ?? '',
                  ))
        ],
      ),
    );
  }
}

class AuthorChip extends StatelessWidget {
  const AuthorChip({
    super.key,
    required this.image,
    required this.name,
  });
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      height: 120,
      width: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 85,
            width: 85,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image)),
          ),
          Text(
            name,
            style: TextStyle(color: primaryColor),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
