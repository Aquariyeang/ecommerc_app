import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/space.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            border: Border.all(width: 0.8, color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/logos/google_logo.png",
              width: WSizes.iconMd,
              height: WSizes.iconMd,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: WSpace.spaceBtwItem),
        Container(
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            border: Border.all(width: 0.8, color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/logos/facebook_logo.jpg",
              width: WSizes.iconMd,
              height: WSizes.iconMd,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
