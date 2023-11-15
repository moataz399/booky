import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),

        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        });
  }
}