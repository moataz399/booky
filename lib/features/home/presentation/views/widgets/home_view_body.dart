import 'package:booky/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booky/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:booky/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              const BookListView(),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
        SliverFillRemaining(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const BestSellerListView(),
        )),
      ],
    );
  }
}
