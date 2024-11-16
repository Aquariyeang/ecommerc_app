import 'package:e_commerce_yt/features/authentication/screens/login_screen/login_screen.dart';
import 'package:e_commerce_yt/navigation_menu.dart';
import 'package:e_commerce_yt/utils/constants/sizes.dart';
import 'package:e_commerce_yt/utils/constants/space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(LoginScreen());
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(WSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/onboard_images/cat.jpg",
            ),
            Text(
              "Welcome to Our Thriving Community!",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: WSpace.spaceBtwItem),
            Text(
              "  Connect with Like-Minded Individuals, and Unleash Your Full Potential as You Navigate Our Platform. Let’s Get Started Together!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: WSpace.spaceBtwSection),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(NavigationMenu());
                  },
                  child: Text("Continue")),
            )
          ],
        ),
      ),
    );
  }
}
