import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frute_app/features/auth/presentation/pages/compleate_information/compleate_information_view.dart';
import 'package:frute_app/features/auth/presentation/pages/login/widgets/coustem_social_midea_login_item.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CoustemSocialMideaLogin extends StatelessWidget {
  const CoustemSocialMideaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CoustemSocialMideaLoginItem(
          iconData: FontAwesomeIcons.google,
          text: 'Log In with',
        ),
        CoustemSocialMideaLoginItem(
          onPress: () {
            Get.to(
              () => CompleateInformationView(),
              duration: Duration(milliseconds: 500),
              transition: Transition.leftToRight,
            );
          },
          iconData: FontAwesomeIcons.facebook,
          text: 'Log In with',
        ),
      ],
    );
  }
}
