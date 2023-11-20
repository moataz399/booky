import 'package:booky/features/home/presentation/views/widgets/book_detail_section.dart';
import 'package:booky/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/BookModel.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
           BookDetailsSection(bookModel:bookModel ),
          SizedBox(height: 20.h),
           SimilarBooksSection(bookModel: bookModel),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}


