import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

Widget customAppbar() {
  return Padding(
    padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 18,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24,
            ))
      ],
    ),
  );
}
