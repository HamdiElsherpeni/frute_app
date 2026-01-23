import 'package:flutter/material.dart';
import 'package:frute_app/features/auth/presentation/pages/compleate_information/widgets/compleate_information_body.dart';

class CompleateInformationView extends StatelessWidget {
  const CompleateInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CompleateInformationBody()));
  }
}
