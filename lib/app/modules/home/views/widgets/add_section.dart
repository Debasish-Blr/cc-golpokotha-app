import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';

class AddSection extends StatefulWidget {
  const AddSection({super.key});

  @override
  State<AddSection> createState() => _AddSectionState();
}

class _AddSectionState extends State<AddSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkBlack,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Stack(alignment: Alignment.topRight, children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          height: 130,
          width: double.infinity,
          // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: addBorderColor),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
                'assets/create_a_generic_ad_banner_selling_hot_pancakes_ 1.jpg',
                fit: BoxFit.cover,),
          ),
        ),
        Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: tertiaryText),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: const Center(
            child: Text(
              'ad',
              style: TextStyle(
                color: tertiaryText,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
