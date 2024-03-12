import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData = ThemeData(
  primaryColor: primaryColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: primaryColor),
  ),
  useMaterial3: true,
  fontFamily: GoogleFonts.inter().fontFamily,
);
