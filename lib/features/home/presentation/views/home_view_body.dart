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
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20.h),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/book.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                overflow: TextOverflow.fade,
                maxLines: 1,
                style: Styles.textStyle18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
