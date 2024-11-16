import 'package:flutter/material.dart';
import '../../../controllers/onboard_controller/onboard_controller.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardController.instance;
    return Positioned(
      right: 0,
      top: kToolbarHeight,
      child: TextButton(
        child: Text("Skip"),
        onPressed: () {
          controller.SkipPage();
        },
      ),
    );
  }
}
