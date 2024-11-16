import 'package:flutter/cupertino.dart';
import '../../../../utils/constants/images.dart';
import '../../screens/login_screen/login_screen.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  static OnboardController get instance => Get.find();
  final pageController = PageController();

  Rx<int> currentPage = 0.obs;

  void OnChangePage(index) {
    currentPage.value = index;
  }

  void OnDotClicked(index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }

  void SkipPage() {
    //jump to the last onboarding page
    pageController.jumpToPage(WImages.onboardImage.length - 1);
  }

  void NextPage() {
    if (pageController.page == WImages.onboardImage.length - 1) {
      Get.offAll(LoginScreen());
    } else {
      pageController.jumpToPage(currentPage.value + 1);
    }
  }
}
