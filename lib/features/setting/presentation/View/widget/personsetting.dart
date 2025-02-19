import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:commerce8/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Personsetting extends StatelessWidget {
  const Personsetting({super.key, required this.accountmodels});
  final Accountmodels accountmodels;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'Personalization',
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
              const Icon(Icons.person),
              const SizedBox(
                width: 12,
              ),
              Text(
                'Account',
                style: Appstyles.font23,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(Gorouter2.kprofileView,
                      extra: accountmodels);
                },
                icon: Icon(Icons.arrow_forward_ios),
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
              const Icon(Icons.logout),
              const SizedBox(
                width: 12,
              ),
              Text(
                'log out',
                style: Appstyles.font23,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  GoRouter.of(context)
                      .pushReplacement(Gorouter2.klogout, extra: accountmodels);
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
