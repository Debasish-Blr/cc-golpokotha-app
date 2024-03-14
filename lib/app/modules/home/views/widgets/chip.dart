import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ChipBox extends StatelessWidget {
  const ChipBox(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.chip_name,
      // ignore: non_constant_identifier_names
      required this.chip_color,
      // ignore: non_constant_identifier_names
      required this.text_color});
// ignore: non_constant_identifier_names
  final String chip_name;
// ignore: non_constant_identifier_names
  final Color chip_color;
  // ignore: non_constant_identifier_names
  final Color text_color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: chip_color,
        border: Border.all(width: 1, color: tertiaryText )
      ),
      child: Text(
        chip_name,
        style: TextStyle(color: text_color,
        fontFamily: GoogleFonts.roboto().fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
      ),
    );
  }
}
