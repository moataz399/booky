import 'package:booky/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../cubits/newset_books_cubit/newset_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height *2,
            child: ListView.builder(
                itemCount: state.books.length,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child:
                        BestSellerListViewItem(bookModel: state.books[index]),
                  );
                }),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
