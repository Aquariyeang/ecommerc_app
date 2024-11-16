import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../controllers/sigup_controller/sign_up_controller.dart';

class AgreePolicy extends StatelessWidget {
  const AgreePolicy({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///CheckBox
        Obx(
              () => Checkbox(
              activeColor: Colors.blue,
              value: controller.isChecked.value,
              onChanged: (value) {
                controller.Checked(value!);
              }),
        ),

        ///Rich Text
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: "I agree to ",
                  style: Theme.of(context).textTheme.bodyMedium),
              TextSpan(
                text: "Policy ",
                style: TextStyle(
                    fontSize: 16,
                    color: WColors.primaryColor,
                    decoration: TextDecoration.underline),
              ),
              TextSpan(
                  text: "and ",
                  style: Theme.of(context).textTheme.bodyMedium),
              TextSpan(
                text: "Term of use",
                style: TextStyle(
                    fontSize: 16,
                    color: WColors.primaryColor,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),

        ///
      ],
    );
  }
}