import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 150,
      color: darkBlack,
      elevation: 2,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/Frame 3.jpg',
                height: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      color: primaryColor,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'SubText',
                    style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Icon(
            Icons.pause,
            color: primaryColor,
          )
        ]),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: tertiaryText,
            ),
            Icon(
              Icons.search,
              color: tertiaryText,
            ),
            Icon(
              Icons.library_books,
              color: tertiaryText,
            ),
            Icon(
              Icons.person,
              color: tertiaryText,
            )
          ],
        ),
      ]),
    );
  }
}
