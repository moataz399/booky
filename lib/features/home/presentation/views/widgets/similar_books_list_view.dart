import 'package:booky/features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .35,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: const CustomBookImage(
                  imgUrl:
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstatusneo.com%2Ffrom-pixels-to-reality-how-ai-generated-images-are-revolutionizing-industries%2F&psig=AOvVaw1Yp4059Wbt6PjH2Z_dK2Rl&ust=1700496212940000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMDOzJi40IIDFQAAAAAdAAAAABAE"),
            );
          }),
    );
  }
}
