import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: WSizes.defaultSpace),
        child: Text(
          "Popular Categories",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.apply(color: Colors.white),
        ));
  }
}
