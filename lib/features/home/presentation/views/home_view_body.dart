import 'package:booky/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:booky/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppbar(),
          BookListView(),
          SizedBox(height: 50.h),
          Text(
            'Best Seller',
            style: Styles.titleM,
          )
        ],
      ),
    );
  }
}
