import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class LogInHeader extends StatelessWidget {
  const LogInHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(WImages.logoImage, width: 150),
        SizedBox(height: WSizes.defaultSpace),
        Text(WTexts.logInTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        Text(WTexts.logInSubtitle,
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
