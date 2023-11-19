import 'package:booky/core/utils/widgets/custom_error_widget.dart';
import 'package:booky/core/utils/widgets/custom_loading_indicator.dart';
import 'package:booky/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:booky/features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

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
                    child: CustomBookImage(
                        imgUrl:
                            state.books[index].volumeInfo.imageLinks!.thumbnail),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomerrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
