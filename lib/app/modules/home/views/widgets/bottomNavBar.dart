import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> iconTexts = ['Home', 'Search', 'Book', 'Person'];
  List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.book,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 140,
      color: darkBlack,
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Frame 3.jpg',
                    height: 50,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              icons.length,
              (index) => InkWell(
                onTap: () {
                  onTabTapped(index);
                  print(_selectedIndex);
                },
                child: Container(
                  width: 90,
                  height: 50,
                  // color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        icons[index],
                        color: _selectedIndex == index
                            ? Color(0xff045EB9)
                            : tertiaryText,
                      ),
                      Text(
                        iconTexts[index],
                        style: TextStyle(
                          color: _selectedIndex == index
                              ? Color(0xff045EB9)
                              : tertiaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
