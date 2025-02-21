import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:commerce8/features/home/presentation/View/model/drawermodel.dart';
import 'package:commerce8/features/home/presentation/View/widget/RowofDrawer.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/accountshow_cubit.dart';
import 'package:commerce8/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Drawerview extends StatelessWidget {
  const Drawerview({super.key, required this.uid});
  final String uid;
  final List<Drawermodel> name = const [
    Drawermodel(
      nameicon: 'Setting',
      icon: Icons.settings,
    ),
    Drawermodel(
      nameicon: 'Acount',
      icon: Icons.person,
    ),
    Drawermodel(
      nameicon: 'Favorite',
      icon: Icons.favorite,
    ),
    Drawermodel(
      nameicon: 'Help',
      icon: Icons.help,
    ),
    Drawermodel(
      nameicon: 'About us',
      icon: Icons.account_balance,
    ),
    Drawermodel(
      nameicon: 'Log out',
      icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: chanagecolorofthemeff().gettheme(context) == true
            ? Colors.white
            : Colors.grey,
        // color: BlocProvider.of<SettingCubit>(context).theme2 == 'light'
        //     ? Colors.white
        //     : Colors.grey,
      ),
      child: BlocBuilder<AccountshowCubit, AccountshowState>(
        builder: (context, state) {
          if (state is Accountshowsuccess) {
            return ListView(
              children: [
                customdrawerheader(
                  accountmodels: state.accountmodels,
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: List.generate(
                      name.length,
                      (index) {
                        return RowofDrawer(
                          accountmodels: state.accountmodels,
                          name: name,
                          index: index,
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class customdrawerheader extends StatelessWidget {
  const customdrawerheader({
    super.key,
    required this.accountmodels,
  });
  final Accountmodels accountmodels;
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(
              Assets.assetsImagesIMG20230611201350769,
            ),
            radius: 50,
          ),
          Text(
            accountmodels.name,
            style: Appstyles.font20.copyWith(
              color: chanagecolorofthemeff().gettheme(context) == true
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
    return BlocBuilder<AccountshowCubit, AccountshowState>(
      builder: (context, state) {
        if (state is Accountshowsuccess) {}
      },
    );
  }
}
