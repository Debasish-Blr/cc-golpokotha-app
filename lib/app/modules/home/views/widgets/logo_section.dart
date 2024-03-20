import 'package:flutter/material.dart';
import 'package:golpokotha/app/data/colors.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 190,
      height: 120,
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.circular(550),
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 2.6,
          // focalRadius: 4,
          colors: [
            Color.fromRGBO(4, 94, 185, 0.23),
            Color.fromARGB(0, 109, 137, 164),
          ],
          stops: [0.0, 0.7],
        ),
      ),
      // padding: const EdgeInsets.only(left: 10, top: 16, bottom: 16),
      child: Image.asset(
        'assets/images/MicrosoftTeams-image (11).png',
        // width: 164
        // color: Colors.transparent,
        // fit: BoxFit.,
      ),
    );
  }
}
