import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/accountshow_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Profileviewbody extends StatelessWidget {
  const Profileviewbody({super.key, required this.accountmodels});
  final Accountmodels accountmodels;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: BlocBuilder<AccountshowCubit, AccountshowState>(
        builder: (context, state) {
          if (state is Accountshowsuccess) {
            return ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const CircleAvatar(
                  radius: 90,
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(
                      Assets.assetsImagesIMG20230611201350769,
                    ),
                    radius: 80,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                  ),
                  title: Text(
                    'Named',
                    style: Appstyles.font23,
                  ),
                  subtitle: Text(
                    state.accountmodels.name,
                    style: Appstyles.font18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.email,
                  ),
                  title: Text(
                    'Email',
                    style: Appstyles.font23,
                  ),
                  subtitle: Text(
                    state.accountmodels.email,
                    style: Appstyles.font18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                  ),
                  title: Text(
                    'Phone',
                    style: Appstyles.font23,
                  ),
                  subtitle: Text(
                    state.accountmodels.phone,
                    style: Appstyles.font18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushReplacement(Gorouter2.khelp);
                  },
                  child: ListTile(
                    leading: const Icon(
                      Icons.help,
                    ),
                    title: Text(
                      'Help',
                      style: Appstyles.font23,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Customelevaterbutton(
                    onpressed: () {
                      GoRouter.of(context).pushReplacement(Gorouter2.klogout);
                    },
                    title: 'Log out')
              ],
            );
          } else {
            return ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const CircleAvatar(
                  radius: 90,
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(
                      Assets.assetsImagesIMG20230611201350769,
                    ),
                    radius: 80,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                  ),
                  title: Text(
                    'Named',
                    style: Appstyles.font23,
                  ),
                  subtitle: Text(
                    '',
                    style: Appstyles.font18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.email,
                  ),
                  title: Text(
                    'Email',
                    style: Appstyles.font23,
                  ),
                  subtitle: Text(
                    '',
                    style: Appstyles.font18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                  ),
                  title: Text(
                    'Phone',
                    style: Appstyles.font23,
                  ),
                  subtitle: Text(
                    '',
                    style: Appstyles.font18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushReplacement(Gorouter2.khelp);
                  },
                  child: ListTile(
                    leading: const Icon(
                      Icons.help,
                    ),
                    title: Text(
                      'Help',
                      style: Appstyles.font23,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Customelevaterbutton(
                    onpressed: () {
                      GoRouter.of(context).pushReplacement(Gorouter2.klogout);
                    },
                    title: 'Log out')
              ],
            );
          }
        },
      ),
    );
  }
}
