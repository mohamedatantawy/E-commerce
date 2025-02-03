import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/model/drawermodel.dart';
import 'package:commerce8/features/home/presentation/View/widget/RowofDrawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Drawerview extends StatelessWidget {
  const Drawerview({super.key});
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
        color: Colors.white,
      ),
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    Assets.assetsImagesLogo,
                  ),
                  radius: 50,
                ),
                Text(
                  'Mohamed tantawy',
                  style: Appstyles.font20,
                ),
              ],
            ),
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
                    name: name,
                    index: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
