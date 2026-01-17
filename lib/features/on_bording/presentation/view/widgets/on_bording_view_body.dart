import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:frute_app/constsnt.dart';
import 'package:frute_app/core/utils/size_cofige.dart';
import 'package:frute_app/core/widgets/coustem_buttons.dart';
import 'package:frute_app/core/widgets/coustem_indecator.dart';
import 'package:frute_app/features/auth/presentation/view/login_view.dart';
import 'package:frute_app/features/on_bording/presentation/view/widgets/coustem_page_view.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/utils.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CoustemPageView(pageController: pageController),
        Positioned(
          left: SizeCofige.defaultSize! * 10,
          right: SizeCofige.defaultSize! * 10,
          bottom: SizeCofige.defaultSize! * 25,
          child: CoustemIndecator(
            index: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeCofige.defaultSize! * 10,
            right: SizeCofige.defaultSize! * 4,
            child: Text('Skip'),
          ),
        ),
        Positioned(
          left: SizeCofige.defaultSize! * 10,
          right: SizeCofige.defaultSize! * 10,
          bottom: SizeCofige.defaultSize! * 10,
          child: GeneralButton(
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'GetStarted' : 'Next')
                : 'Next',
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.bounceIn,
                );
              } else {
                Get.to(
                  () => LoginView(),
                  transition: Transition.rightToLeft,
                  duration: Duration(milliseconds: 500),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
