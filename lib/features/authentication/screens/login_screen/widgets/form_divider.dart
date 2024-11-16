import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Divider(
            color: Colors.blue,
            endIndent: 10,
          ),
        ),
        Text(
          "Or Sign In With",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: Colors.blue,
          indent: 10,
        )),
      ],
    );
  }
}
