import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../controllers/onboard_controller/onboard_controller.dart';

class OnboardDisplay extends StatelessWidget {
  const OnboardDisplay({
    super.key,
    required this.controller,
  });

  final OnboardController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: controller.OnChangePage,
      controller: controller.pageController,
      itemCount: WImages.onboardImage.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                width: MediaQuery.sizeOf(context).width * 8,
                height: MediaQuery.sizeOf(context).height * 0.6,
                WImages.onboardImage[index],
              ),
              Text(
                WTexts.onboardTitle[index],
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                WTexts.onboardSubtitle[index],
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        );
      },
    );
  }
}