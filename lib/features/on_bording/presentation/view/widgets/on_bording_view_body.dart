import 'package:flutter/material.dart';
import 'package:frute_app/core/utils/size_cofige.dart';
import 'package:frute_app/core/widgets/coustem_buttons.dart';
import 'package:frute_app/features/on_bording/presentation/view/widgets/coustem_page_view.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CoustemPageView(),
        Positioned(
          top: SizeCofige.defaultSize! * 10,
          right: SizeCofige.defaultSize! * 4,
          child: Text('Skip'),
        ),
        Positioned(
          left: SizeCofige.defaultSize! * 10,
          right: SizeCofige.defaultSize! * 10,
          bottom: SizeCofige.defaultSize! * 10,
          child: GeneralButton(text: 'Next',),
        ),
      ],
    );
  }
}
