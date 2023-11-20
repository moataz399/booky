
import 'package:booky/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/BookModel.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key,required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              'you can also like ',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        const SimilarBooksListView(),
      ],
    );
  }
}
