import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/home/controllers/home_controller.dart';

class CategoryPage extends GetView<HomeController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Column(
          // color: darkBlack,
          children: [
        Category(),
        Category(),
        Category(),
      ]),
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 12),
            child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/Frame 1.jpg'),
            ),
            Text('Title', style: TextStyle(color: primaryColor)),
            Text('Description', style: TextStyle(color: primaryColor))
          ],
        )),
        SizedBox(height: 30,),
        Container(
      padding: EdgeInsets.only(left: 12,),
            child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/Frame 3.jpg'),
            ),
            Text('Title', style: TextStyle(color: primaryColor) ,),
            Text('Description', style: TextStyle(color: primaryColor))
          ],
        )),
        SizedBox(height: 30,),
        Container(
          padding: EdgeInsets.only(left: 12),
            child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/Frame 2.jpg'),
            ),
            Text('Title', style: TextStyle(color: primaryColor)),
            Text('Description', style: TextStyle(color: primaryColor))
          ],
        )),
      ],
    );
    ;
  }
}
