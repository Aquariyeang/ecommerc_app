import 'package:e_commerce_yt/features/shop/screens/home/widgets/categories_list.dart';
import 'package:e_commerce_yt/features/shop/screens/home/widgets/category_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/curve_edge/curve_edge_widget.dart';
import '../../../../utils/constants/space.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipathHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CategoryTitle(),
          SizedBox(height: WSpace.spaceBtwItem),
          CategoriesList(),
        ],
      ),
    );
  }
}
