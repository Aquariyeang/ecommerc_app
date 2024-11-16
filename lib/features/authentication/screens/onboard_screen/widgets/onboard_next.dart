import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/onboard_controller/onboard_controller.dart';

class OnboardingNext extends StatelessWidget {
  const OnboardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardController.instance;
    return Positioned(
      right: 30,
      bottom: WSizes.xl,
      child: ElevatedButton(
        onPressed: () {
          controller.NextPage();
        },
        style: ElevatedButton.styleFrom(shape: CircleBorder()),
        child: Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
