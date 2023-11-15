import 'package:booky/core/utils/styles.dart';
import 'package:booky/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Custom_book_image.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: CustomBookImage(),
        ),
        SizedBox(height: 40.h),
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
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
