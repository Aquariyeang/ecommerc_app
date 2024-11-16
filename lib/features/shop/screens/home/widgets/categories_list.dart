import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/images.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: WImages.categoriesIcons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: InkWell(
              onTap: () {},
              child: Column(children: [
                ///Circle shape
                CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    WImages.categoriesIcons[index],
                    width: MediaQuery.sizeOf(context).width * 0.09,
                    fit: BoxFit.contain,
                  ),
                ),

                ///categories title
                Text(WImages.categoriesName[index],
                    style: TextStyle().copyWith(color: Colors.white))
              ]),
            ),
          );
        },
      ),
    );
  }
}
