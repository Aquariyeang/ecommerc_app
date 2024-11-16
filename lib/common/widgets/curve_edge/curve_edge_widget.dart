import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helpers_function.dart';
import 'curve_edge.dart';

class ClipathHeader extends StatelessWidget {
  ClipathHeader({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipPath(),
      child: Container(
        width: double.infinity,
        height: WHelperFunctions.screenHeight() * 0.23,
        color: WColors.primaryColor,
        child: Stack(
          children: [child],
        ),
      ),
    );
  }
}
