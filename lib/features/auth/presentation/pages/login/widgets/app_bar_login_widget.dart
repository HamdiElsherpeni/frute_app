import 'package:flutter/material.dart';
import 'package:frute_app/constsnt.dart';
import 'package:frute_app/core/utils/size_cofige.dart';
import 'package:frute_app/core/widgets/space_widget.dart';

class AppBarLoginWedgwt extends StatelessWidget {
  const AppBarLoginWedgwt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(value: 10),
        Center(
          child: SizedBox(
            height: SizeCofige.defaultSize! * 20,
            child: Image.asset(kLogo),
          ),
        ),
        VerticalSpace(value: 5),
        Text(
          'Fruit Market',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        VerticalSpace(value: 15),
      ],
    );
  }
}
