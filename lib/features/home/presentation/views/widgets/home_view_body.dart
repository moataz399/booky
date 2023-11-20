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
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBookListView(),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'Newest books',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
            child: BestSellerListView()),
      ],
    );
  }
}
