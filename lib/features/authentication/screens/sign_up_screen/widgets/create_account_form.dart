
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/space.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "First Name",
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  )),
              SizedBox(width: WSpace.spaceBtwItem),
              Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  )),
            ],
          ),
          SizedBox(height: WSpace.spaceBtwItem),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Username",
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: WSpace.spaceBtwItem),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Email", prefixIcon: Icon(Iconsax.box)),
          ),
          SizedBox(height: WSpace.spaceBtwItem),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Iconsax.password_check)),
          ),
          SizedBox(height: WSpace.spaceBtwItem),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Phone number",
                prefixIcon: Icon(Iconsax.call)),
          ),
        ],
      ),
    );
  }
}