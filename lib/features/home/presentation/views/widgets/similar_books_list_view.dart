import 'package:booky/core/utils/widgets/custom_error_widget.dart';
import 'package:booky/core/utils/widgets/custom_loading_indicator.dart';
import 'package:booky/features/home/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:booky/features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * .35,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: CustomBookImage(
                        imgUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            ""),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errorMessage,
          );
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
