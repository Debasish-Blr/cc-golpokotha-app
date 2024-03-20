import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/auth/controller/google_sinIn_controller.dart';
import 'package:golpokotha/app/routes/app_pages.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(GoogleSignInController());

    return Scaffold(
      backgroundColor: darkBlack,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(children: [
          Container(
            height: 162,
            // padding: EdgeInsets.symmetric(vertical: 18),
            // constraints: BoxConstraints.expand(),
            // color: Colors.amber,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(550),
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 2,
                focalRadius: 3,
                colors: [
                  Color.fromRGBO(4, 94, 185, 0.23),
                  Color.fromARGB(0, 109, 137, 164),
                ],
                stops: [0.0, 0.8],
              ),
            ),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      'Login to your account',
                      style: TextStyle(fontSize: 24, color: primaryColor),
                    ),
                  ),
                  Text(
                    'Continue listening to your favorite stories on the mobile while you travel around',
                    style: TextStyle(color: tertiaryText, fontSize: 16),
                  )
                ]),
          ),
          const TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(color: tertiaryText),
                border: OutlineInputBorder(),
                hintText: 'Email'),
          ),
          const SizedBox(
            height: 32,
          ),
          const TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(color: tertiaryText),
                border: OutlineInputBorder(),
                hintText: 'Password'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: loginButtonColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(color: primaryColor, fontSize: 16),
                    ))),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () async {
                    User? user = await GoogleSignInController.signInWithGoogle(
                        context: context);
                    if (user != null) {
                      Get.toNamed(AppPages.HOME);
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                        child: Text(
                      'Continue with Google',
                      style: TextStyle(color: darkBlack, fontSize: 16),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Continue with Facebook',
                        style: TextStyle(color: darkBlack, fontSize: 16),
                      ),
                    )),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an accout ? ',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      'Login Here',
                      style: TextStyle(color: loginButtonColor),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
