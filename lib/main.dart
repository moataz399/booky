import 'package:booky/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      child: GetMaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
        ),
        home: const SplashView(),
      ),
    );
  }
}
