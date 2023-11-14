import 'package:booky/features/home/presentation/views/home_view.dart';
import 'package:booky/features/splash/presentation/view/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() =>const   HomeView(),
          transition: Transition.fadeIn,
          duration: const Duration(milliseconds: 250));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
