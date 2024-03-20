import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:golpokotha/app/data/theme.dart';
import 'package:golpokotha/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const GolpoKotha(),
  );
}

class GolpoKotha extends StatelessWidget {
  const GolpoKotha({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GolpoKotha",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.ONBOARDING,
      theme: themeData,
      getPages: AppPages.routes,
    );
  }
}
