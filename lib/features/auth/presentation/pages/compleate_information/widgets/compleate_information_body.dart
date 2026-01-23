import 'package:flutter/material.dart';
import 'package:frute_app/core/utils/size_cofige.dart';
import 'package:frute_app/core/widgets/space_widget.dart';
import 'package:frute_app/features/auth/presentation/pages/compleate_information/widgets/compleate_information_item.dart';

class CompleateInformationBody extends StatelessWidget {
  const CompleateInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          VerticalSpace(value: 8),
          CompleateInformationItem(text: 'Enter Your Name'),
          VerticalSpace(value: 5),
          CompleateInformationItem(text: 'Enter Your Phone Number'),
          VerticalSpace(value: 5),
          CompleateInformationItem(text: 'Add Address', maxLine: 5),
        ],
      ),
    );
  }
}
