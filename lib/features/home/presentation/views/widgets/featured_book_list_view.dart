import 'package:booky/core/utils/widgets/custom_error_widget.dart';
import 'package:booky/core/utils/widgets/custom_loading_indicator.dart';
import 'package:booky/features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../cubits/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.bookDetailsView,
                            extra: state.books[index]);
                        print("sssssssssssssssssds;d qojdaslmdkashdpqjk'as" );
                      },
                      child: CustomBookImage(
                          imgUrl: state
                              .books[index].volumeInfo.imageLinks!.thumbnail),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
