import 'package:e_commerce_yt/common/style/spacing_style.dart';
import 'package:e_commerce_yt/features/authentication/screens/login_screen/widgets/form_divider.dart';
import 'package:e_commerce_yt/features/authentication/screens/login_screen/widgets/login_form.dart';
import 'package:e_commerce_yt/features/authentication/screens/login_screen/widgets/login_header.dart';
import 'package:e_commerce_yt/features/authentication/screens/login_screen/widgets/signin_create_button.dart';
import 'package:e_commerce_yt/features/authentication/screens/login_screen/widgets/social_button.dart';
import 'package:e_commerce_yt/utils/constants/images.dart';
import 'package:e_commerce_yt/utils/constants/sizes.dart';
import 'package:e_commerce_yt/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/space.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: WSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            ///LogIn header
            LogInHeader(),

            ///
            SizedBox(height: WSizes.defaultSpace),

            ///Form
            LogInForm(),

            /// Remember me and forget password
            RememberMexForgetPassword(context),

            ///
            SizedBox(height: WSpace.spaceBtwSection),

            ///SignIn and Create Button
            SignInxCreateButton(),

            ///
            SizedBox(height: WSpace.spaceBtwSection),

            ///Form divider
            FormDivider(),

            ///
            SizedBox(height: WSpace.spaceBtwSection),

            ///Sign Up with social media
            SocialButton(),
          ],
        ),
      ),
    );
  }

  Row RememberMexForgetPassword(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              activeColor: Colors.blue,
              onChanged: (logic) {
                setState(() {
                  isChecked = logic!;
                });
              },
            ),
            Text("Remember me?",
                style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        InkWell(onTap: () {}, child: Text("Forget password")),
      ],
    );
  }
}
