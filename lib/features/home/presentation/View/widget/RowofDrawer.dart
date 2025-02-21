import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:commerce8/features/home/presentation/View/model/drawermodel.dart';
import 'package:commerce8/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RowofDrawer extends StatelessWidget {
  const RowofDrawer({
    super.key,
    required this.name,
    required this.index,
    required this.accountmodels,
  });
  final Accountmodels accountmodels;
  final List<Drawermodel> name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Icon(
            name[index].icon,
            size: 30,
            color: chanagecolorofthemeff().gettheme(context) == true
                ? Colors.black
                : Colors.white,
          ),
          const SizedBox(
            width: 40,
          ),
          TextButton(
            onPressed: () {
              if (true) {
                GoRouter.of(context).pop();
                if (index == 0) {
                  GoRouter.of(context)
                      .push(Gorouter2.ksetting, extra: accountmodels);
                } else if (index == 1) {
                  GoRouter.of(context)
                      .push(Gorouter2.kprofileView, extra: accountmodels);
                } else if (index == 2) {
                  GoRouter.of(context).push(Gorouter2.kfavorite);
                } else if (index == 3) {
                  GoRouter.of(context).push(Gorouter2.khelp);
                } else if (index == 4) {
                  GoRouter.of(context).push(Gorouter2.kaboutus);
                } else if (index == 5) {
                  GoRouter.of(context)
                      .push(Gorouter2.klogout, extra: accountmodels);
                }
              }
            },
            child: Text(
              name[index].nameicon,
              style: Appstyles.font20.copyWith(
                fontWeight: FontWeight.w500,
                color: chanagecolorofthemeff().gettheme(context) == true
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
