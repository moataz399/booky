import 'package:booky/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 20,
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'read free books',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
