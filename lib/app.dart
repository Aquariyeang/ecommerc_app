import 'package:e_commerce_yt/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'features/authentication/screens/onboard_screen/onboard_screen.dart';
import 'features/authentication/screens/sign_up_screen/verify_email.dart';
import 'navigation_menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: NavigationMenu(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: WAppTheme.lightmode,
      darkTheme: WAppTheme.darkmode,
    );
  }
}
