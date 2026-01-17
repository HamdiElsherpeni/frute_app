import 'package:flutter/widgets.dart';

class SizeCofige {
  static double? screenWidth;
  static double? screenHight;
  static double? defaultSize;
  static Orientation? orintation;
  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHight = MediaQuery.of(context).size.height;
    orintation = MediaQuery.of(context).orientation;
    defaultSize = orintation == Orientation.landscape
        ? screenHight! * .024
        : screenWidth! * .024;
  }
}
