import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constrints) {
      // double w = constrints.maxWidth;
      // double h = constrints.maxHeight;
      return Scaffold(
        backgroundColor: darkBlack,
        body: Stack(
          children: [
            Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Colors.transparent,
                  Color(0xFF121212),
                ],
              ),
            ),
          ),
            Image.asset(
              'assets/images/generate_an_image_with_the_following_characteris 1.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            // const SizedBox(height: 16),
            Center(
              child: Image.asset('assets/images/MicrosoftTeams-image (10).png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voice of Bengal',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        letterSpacing: 0.1,
                        color: primaryColor),
                  ),
                   SizedBox(height: 16,),
                  Text(
                    'Welcome to the rich, compelling and brant world of Bengali literature presented in audio.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        letterSpacing: 0.1,
                        color: tertiaryText),
                  ),
                  SizedBox(height: 48,),
                  InkWell(
                    onTap: (){
                      Get.toNamed(AppPages.LOGINPAGE);
                    },
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: loginButtonColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Text(
                          'Get Started',
                          style: TextStyle(color: primaryColor, fontSize: 16),
                        ))),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
