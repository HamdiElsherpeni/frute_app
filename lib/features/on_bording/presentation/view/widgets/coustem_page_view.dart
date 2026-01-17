import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frute_app/features/on_bording/presentation/view/widgets/page_view_iteam.dart';

class CoustemPageView extends StatelessWidget {
  const CoustemPageView({super.key, this.pageController});
final PageController ?pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewIteam(
          image: 'assets/images/onBording1.png',
          titel: 'E Shopping',
          subTitel: 'Explore  top organic fruits & grab them',
        ),
        PageViewIteam(
          image: 'assets/images/onBording2.png',
          titel: 'Delivery on the way',
          subTitel: 'Get your order by speed delivery',
        ),
        PageViewIteam(
          image: 'assets/images/onBording3.png',
          titel: 'Delivery Arrived',
          subTitel: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
