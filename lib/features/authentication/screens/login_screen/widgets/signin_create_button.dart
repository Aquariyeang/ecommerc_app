import 'package:e_commerce_yt/features/authentication/screens/sign_up_screen/sign_up_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/space.dart';

class SignInxCreateButton extends StatelessWidget {
  const SignInxCreateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Sign In Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Sign In"),
          ),
        ),
        SizedBox(height: WSpace.spaceBtwItem),

        ///Create account Button
        SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(SignUpScreen());
                },
                child: Text("Create Account"))),
      ],
    );
  }
}
