import 'package:e_commerce_yt/features/authentication/controllers/sigup_controller/sign_up_controller.dart';
import 'package:e_commerce_yt/features/authentication/screens/login_screen/widgets/form_divider.dart';
import 'package:e_commerce_yt/features/authentication/screens/login_screen/widgets/social_button.dart';
import 'package:e_commerce_yt/features/authentication/screens/sign_up_screen/widgets/agree_policy.dart';
import 'package:e_commerce_yt/features/authentication/screens/sign_up_screen/widgets/create_account_button.dart';
import 'package:e_commerce_yt/features/authentication/screens/sign_up_screen/widgets/create_account_form.dart';
import 'package:e_commerce_yt/features/authentication/screens/sign_up_screen/widgets/sign_up_header.dart';
import 'package:e_commerce_yt/utils/constants/sizes.dart';
import 'package:e_commerce_yt/utils/constants/space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  SignUpController controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Header
              SignUpHeader(),
              SizedBox(height: WSpace.spaceBtwSection),

              ///Form for sign up
              CreateAccountForm(),
              SizedBox(height: WSpace.spaceBtwItem),

              ///Agree policy
              AgreePolicy(controller: controller),
              SizedBox(height: WSpace.spaceBtwItem),

              ///Create account button
              CreateAccountButton(),
              SizedBox(height: WSpace.spaceBtwSection),

              ///Form divider
              FormDivider(),
              SizedBox(height: WSpace.spaceBtwSection),

              ///Social account
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
