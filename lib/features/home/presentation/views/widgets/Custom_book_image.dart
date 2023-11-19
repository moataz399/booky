
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.imgUrl});
final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 225.h,
        width: 150.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imgUrl),
            )),
      ),
    );
  }
}
