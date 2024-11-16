import 'package:e_commerce_yt/features/authentication/screens/sign_up_screen/verify_email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                  Get.offAll(VerifyEmailScreen());
                },
                child: Text("Create Account"))),
      ],
    );
  }
}
