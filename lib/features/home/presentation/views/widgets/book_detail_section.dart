import 'package:booky/features/home/data/models/BookModel.dart';
import 'package:booky/features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:booky/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booky/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: CustomBookImage(
              imgUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ""),
        ),
        SizedBox(height: 30.h),
        Text(
          bookModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        SizedBox(height: 6.h),
        Text(
          bookModel.volumeInfo.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 18.h),
        BookRating(
            count: bookModel.volumeInfo.ratingsCount ?? 0,
            rating: bookModel.volumeInfo.averageRating ?? 0,
            mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 30.h),
        const BooksActions(),
        SizedBox(height: 30.h),
      ],
    );
  }
}
