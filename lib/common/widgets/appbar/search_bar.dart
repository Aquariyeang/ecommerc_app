import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helpers_function.dart';

class WSearchBar extends StatelessWidget {
  const WSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: WHelperFunctions.screenWidth() * 0.8,
      height: WHelperFunctions.screenHeight() * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          constraints: BoxConstraints(minWidth: 120, minHeight: 40),
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
          hintStyle: TextStyle().copyWith(color: Colors.grey, fontSize: 15),
          filled: true,
        ),
      ),
    );
  }
}
