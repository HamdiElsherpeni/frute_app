import 'package:flutter/material.dart';
import 'package:frute_app/core/utils/size_cofige.dart';
import 'package:frute_app/core/widgets/space_widget.dart';

class PageViewIteam extends StatelessWidget {
  const PageViewIteam({
    super.key,
    required this.image,
    required this.titel,
    required this.subTitel,
  });
  final String image;
  final String titel;
  final String subTitel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(value: 20),
        SizedBox(
          height: SizeCofige.defaultSize! * 29,
          child: Image.asset(image),
        ),
        Text(titel, style: TextStyle(fontWeight: FontWeight.bold)),
        VerticalSpace(value: 1.5),
        Text(subTitel, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
