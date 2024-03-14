import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Seemore extends StatelessWidget {
  const Seemore({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, 
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: primaryColor,
            fontFamily: GoogleFonts.roboto().fontFamily
          ),),
          
         const Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Text('See more',
           style: TextStyle(
             color: tertiaryText,
             fontSize: 17
           ),),
           Icon(Icons.arrow_forward_ios,
           size: 17,
           color: tertiaryText,)
         ],)
        ],
      ),
    );
  }
}