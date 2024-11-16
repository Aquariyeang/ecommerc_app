import 'package:e_commerce_yt/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});
  NavigationMenuController controller = Get.put(NavigationMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.index.value,
          onDestinationSelected: (value) {
            controller.index.value = value;
          },
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Shop"),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: "Wish List"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.index.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  var index = 0.obs;
  var screens = [
    Homepage(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.blue,
    )
  ];
}
