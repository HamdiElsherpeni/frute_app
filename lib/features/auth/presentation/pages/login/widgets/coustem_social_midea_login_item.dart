import 'package:flutter/material.dart';
import 'package:frute_app/core/utils/size_cofige.dart';

class CoustemSocialMideaLoginItem extends StatelessWidget {
  const CoustemSocialMideaLoginItem({
    super.key,
    required this.iconData,
    required this.text,
    this.onPress,
  });
  final VoidCallback? onPress;
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeCofige.defaultSize! * 6,
      width: SizeCofige.defaultSize! * 17,
      child: OutlinedButton(
        onPressed: onPress ?? () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(iconData),
            Text(text, style: TextStyle(color: Colors.black, fontSize: 8)),
          ],
        ),
      ),
    );
  }
}
