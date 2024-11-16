import 'package:flutter/cupertino.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/helpers/helpers_function.dart';

class CarouselImages extends StatelessWidget {
  const CarouselImages({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: WHelperFunctions.screenHeight() * 0.25,
        child: PageView.builder(
          controller: pageController,
          itemCount: WImages.carouselImages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image.asset(
                    WImages.carouselImages[index],
                    fit: BoxFit.cover,
                  )),
            );
          },
        ),
      ),
    );
  }
}
