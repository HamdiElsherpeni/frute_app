import 'package:flutter/material.dart';
import 'package:frute_app/core/widgets/space_widget.dart';
import 'package:frute_app/features/auth/presentation/pages/login/widgets/app_bar_login_widget.dart';
import 'package:frute_app/features/auth/presentation/pages/login/widgets/coustem_social_midea_login.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarLoginWedgwt(),
        CoustemSocialMideaLogin(),
        VerticalSpace(value: 15),
      ],
    );
  }
}
