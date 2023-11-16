

import 'package:booky/features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:booky/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booky/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: const CustomBookImage(),
        ),
        SizedBox(height: 30.h),
        Text(
          'The Jungle Book ',
          style: Styles.textStyle30,
        ),
        SizedBox(height: 6.h),
        Text(
          'moataz mohamed ',
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 18.h),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 30.h),
        const BooksActions(),
        SizedBox(height: 30.h),
      ],
    );
  }
}
