import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:frute_app/constsnt.dart';

class CoustemIndecator extends StatelessWidget {
  const CoustemIndecator({super.key, required this.index});
  final double? index;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: index ?? 0,
      decorator: DotsDecorator(
        activeColor: kPrimaryColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: kPrimaryColor),
        ),
      ),
    );
  }
}
