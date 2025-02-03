import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/onboreding/model/onboredinmodel.dart';
import 'package:flutter/material.dart';

class dataofpageView extends StatelessWidget {
  const dataofpageView({
    super.key,
    required this.onbored,
  });

  final Onboredinmodel onbored;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Text(
          onbored.title,
          style: Appstyles.font30semibold,
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
            image: AssetImage(onbored.image),
            // fit: BoxFit.cover,
          )),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          textAlign: TextAlign.center,
          onbored.subtitle,
          style: Appstyles.font25,
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
