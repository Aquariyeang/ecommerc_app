import 'package:e_commerce_yt/features/shop/screens/home/widgets/carousel_images.dart';
import 'package:e_commerce_yt/features/shop/screens/home/widgets/carousel_indicator.dart';
import 'package:e_commerce_yt/utils/constants/colors.dart';
import 'package:e_commerce_yt/utils/helpers/helpers_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/space.dart';
import '../../controllers/products_controller.dart';
import 'home_header.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final PageController pageController = PageController();
  final WProductsController controller = Get.put(WProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.4),
      appBar: WAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            CarouselImages(pageController: pageController),
            SizedBox(height: WSpace.spaceBtwItem),
            CarouselIndicator(pageController: pageController),
            SizedBox(height: WSpace.spaceBtwItem),
            GetBuilder<WProductsController>(
              builder: (_) {
                if (controller.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return MasonryGridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate:
                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    itemCount: controller.allProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      final product = controller.allProducts[index];
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Container(
                          color: Colors.white.withOpacity(0.7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.grey.withOpacity(0.4),
                                height: WHelperFunctions.screenHeight() * 0.22,
                                width: double.infinity,
                                child: Image.network(
                                  product.images[0],
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.title,
                                      maxLines: 2,
                                    ),
                                    Text(
                                      product.price.toString() + "\$",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: WSizes.iconSm,
                                          color: Colors.orangeAccent,
                                        ),
                                        Text(
                                          product.reviews[0].rating.toString() +
                                              " | " +
                                              product.availabilityStatus,
                                          style: TextStyle()
                                              .copyWith(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 1),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: CupertinoColors.systemPink
                                                .withOpacity(0.7),
                                          ),
                                          child: Text(
                                            product.discountPercentage
                                                    .toString() +
                                                "\%",
                                            style: TextStyle().copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
