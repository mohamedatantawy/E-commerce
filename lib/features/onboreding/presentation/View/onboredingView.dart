import 'package:commerce8/features/onboreding/presentation/View/widget/onboredingbody.dart';
import 'package:flutter/material.dart';

class Onboredingview extends StatelessWidget {
  const Onboredingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [Onboredingbody()],
      ),
    );
  }
}
