import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 8, 50, 85),
            darkBlack,

            //  darkBlack
          ],
          radius: 0.76,
          // focal: Alignment(0.7, -0.7),
          tileMode: TileMode.clamp,
          // tileMode: TileMode.mirror,
        ),
      ),
      padding: const EdgeInsets.only(left: 10,  top: 16, bottom: 30),
      child: Image.asset(
        'assets/images/MicrosoftTeams-image (10).png',
        // width: 100,
        // color: Colors.transparent,
        // fit: BoxFit.,
      ),
    );
  }
}
