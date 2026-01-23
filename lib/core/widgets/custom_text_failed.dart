import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CustomTextFailed extends StatelessWidget {
  const CustomTextFailed({
    super.key,
    this.inputType,
    this.suffexIcon,
    this.onSaved,
    this.onChange,
    this.maxLine,
  });
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChange;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      maxLines: maxLine,
      onChanged: onChange,
      onSaved: onSaved,
      decoration: InputDecoration(
        filled: false,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 219, 218, 218),
            width: 0.1,
          ),
        ),
      ),
    );
  }
}
