import 'package:e_commerce_yt/common/widgets/appbar/search_bar.dart';
import 'package:e_commerce_yt/utils/constants/sizes.dart';
import 'package:e_commerce_yt/utils/device/device_utility/device_utils.dart';
import 'package:e_commerce_yt/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class WAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: WColors.primaryColor,
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Iconsax.card, color: Colors.white))
      ],
      title: WSearchBar(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(WDeviceUtils.getAppBarHeight());
}
