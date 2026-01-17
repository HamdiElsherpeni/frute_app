import 'package:flutter/material.dart';
import 'package:frute_app/core/utils/size_cofige.dart';

class HorizentalSpace extends StatelessWidget {
  HorizentalSpace({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: SizeCofige.defaultSize! * value);
  }
}

class VerticalSpace extends StatelessWidget {
  VerticalSpace({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: SizeCofige.defaultSize! * value);
  }
}
