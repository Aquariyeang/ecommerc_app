import 'package:e_commerce_yt/features/authentication/screens/onboard_screen/widgets/onboard_display.dart';
import 'package:e_commerce_yt/features/authentication/screens/onboard_screen/widgets/onboard_indicator.dart';
import 'package:e_commerce_yt/features/authentication/screens/onboard_screen/widgets/onboard_next.dart';
import 'package:e_commerce_yt/features/authentication/screens/onboard_screen/widgets/onboard_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/onboard_controller/onboard_controller.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});
  final controller = Get.put(OnboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardDisplay(controller: controller),
          OnboardingIndicator(),
          OnboardingSkip(),
          OnboardingNext(),
        ],
      ),
    );
  }
}


