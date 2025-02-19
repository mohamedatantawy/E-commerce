import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Moresetting extends StatelessWidget {
  const Moresetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'More',
            style: Appstyles.font25.copyWith(
              color: chanagecolorofthemeff().gettheme(context) == true
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          color: Colors.blue,
          child: Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              const Icon(Icons.help),
              const SizedBox(
                width: 12,
              ),
              Text(
                'help',
                style: Appstyles.font23,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(Gorouter2.khelp);
                },
                icon: const Icon(Icons.arrow_forward_ios),
              )

              // const Icon(Icons.arrow_drop_down_outlined),
            ],
          ),
        ),
        const SizedBox(
          height: 0.1,
        ),
        Container(
          height: 60,
          color: Colors.blue,
          child: Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              const Icon(Icons.account_balance_outlined),
              const SizedBox(
                width: 12,
              ),
              Text(
                'about us',
                style: Appstyles.font23,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(Gorouter2.kaboutus);
                },
                icon: const Icon(Icons.arrow_forward_ios),
              )
              // const Icon(Icons.arrow_drop_down_outlined),
            ],
          ),
        )
      ],
    );
  }
}
