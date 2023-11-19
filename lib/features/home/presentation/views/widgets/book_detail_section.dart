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
          child: CustomBookImage(
              imgUrl:
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstatusneo.com%2Ffrom-pixels-to-reality-how-ai-generated-images-are-revolutionizing-industries%2F&psig=AOvVaw1Yp4059Wbt6PjH2Z_dK2Rl&ust=1700496212940000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMDOzJi40IIDFQAAAAAdAAAAABAE"),
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
