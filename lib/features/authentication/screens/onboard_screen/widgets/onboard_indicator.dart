import 'package:e_commerce_yt/utils/constants/colors.dart';
import 'package:e_commerce_yt/utils/helpers/helpers_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/images.dart';
import '../../../controllers/onboard_controller/onboard_controller.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardController.instance;
    return Positioned(
      left: 50,
      bottom: kBottomNavigationBarHeight,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: (index) {
          controller.OnDotClicked(index);
        },
        count: WImages.onboardImage.length,
        effect: WormEffect(
          activeDotColor: WHelperFunctions.isDarkMode(context)
              ? Colors.white
              : WColors.primaryColor,
          dotHeight: 5,
          dotWidth: 25,
          spacing: 10,
        ),
      ),
    );
  }
}
