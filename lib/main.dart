import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/modules/Verification/views/verification_view.dart';
import 'package:mytsel/app/modules/home/views/splashScreen.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        Duration(seconds: 3),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return splashScreen();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: Routes.LOGIN,
            getPages: AppPages.routes,
            routes: {
              '/Verification': (p0) => VerificationView(),
            },
          );
        }
      },
    );
  }
}
