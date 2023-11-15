import 'package:booky/core/utils/styles.dart';
import 'package:booky/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.bookDetailsView);

      },
      child: SizedBox(
        height: 125.h,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.w),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/book.png'),
                  ),
                ),
              ),
            ),
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
                      'Harry Potter and the Goblet of Fire',
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
                      'j.k.Rowling ',
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
                          '19.99\$',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      BookRating(mainAxisAlignment: MainAxisAlignment.start),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

