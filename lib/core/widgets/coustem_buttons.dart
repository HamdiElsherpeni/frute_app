import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frute_app/constsnt.dart';
import 'package:frute_app/core/utils/size_cofige.dart';

class GeneralButton extends StatelessWidget {
  GeneralButton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: SizeCofige.screenWidth,
        height: SizeCofige.screenHight! * 0.08,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
