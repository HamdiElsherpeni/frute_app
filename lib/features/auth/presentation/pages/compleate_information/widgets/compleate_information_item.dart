import 'package:flutter/material.dart';
import 'package:frute_app/core/widgets/custom_text_failed.dart';

class CompleateInformationItem extends StatelessWidget {
  const CompleateInformationItem({super.key, required this.text, this.maxLine});
  final String text;
final int? maxLine;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
        CustomTextFailed(maxLine: maxLine,),
      ],
    );
  }
}
