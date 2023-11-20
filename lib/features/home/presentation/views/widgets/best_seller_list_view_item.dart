import 'package:booky/core/utils/styles.dart';
import 'package:booky/features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:booky/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../data/models/BookModel.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView, extra: bookModel);
      },
      child: bookModel.volumeInfo.imageLinks?.thumbnail != null
          ? SizedBox(
              height: 125.h,
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomBookImage(
                        imgUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                            "https://www.facebook.com/photo/?fbid=241687538671948&set=a.241687548671947&__tn__=%3C",
                      )),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Text(
                            bookModel.volumeInfo.title ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.textStyle20,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        SizedBox(
                          child: Text(
                            bookModel.volumeInfo.authors![0],
                            style: Styles.textStyle14,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Text(
                                'free',
                                style: Styles.textStyle20
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                            BookRating(
                                count: bookModel.volumeInfo.ratingsCount ?? 0,
                                rating: bookModel.volumeInfo.averageRating ?? 0,
                                mainAxisAlignment: MainAxisAlignment.start),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          : Container(
              height: 0,
            ),
    );
  }
}
