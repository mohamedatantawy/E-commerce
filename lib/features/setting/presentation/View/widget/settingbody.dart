import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:commerce8/features/setting/presentation/View/widget/commonsetting.dart';
import 'package:commerce8/features/setting/presentation/View/widget/moresetting.dart';
import 'package:commerce8/features/setting/presentation/View/widget/personsetting.dart';
import 'package:flutter/material.dart';

// class Settingbody extends StatefulWidget {
//   const Settingbody({super.key});

//   @override
//   State<Settingbody> createState() => _SettingbodyState();
// }

class Settingbody extends StatelessWidget {
  const Settingbody({super.key, required this.accountmodels});
  final Accountmodels accountmodels;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Commonsetting(),
        const SizedBox(
          height: 40,
        ),
        Personsetting(
          accountmodels: accountmodels,
        ),
        const SizedBox(
          height: 40,
        ),
        const Moresetting(),
      ],
    );
  }
}
/* Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'Commen',
                style: Appstyles.font20.copyWith(
                  color:  chanagecolorofthemeff().gettheme(context) == true
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
                  const Icon(Icons.language),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Language',
                    style: Appstyles.font23,
                  ),
                 const Spacer(),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: AlertDialog(
                              title: const Text(
                                'Language',
                              ),
                              elevation: 0,
                              content: SizedBox(
                                height: 100,
                                child: Column(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child:const Text('Arabic'),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child:const Text('English'),
                                    ),
                                  ],
                                ),
                              ),

                              // backgroundColor: Colors.red,
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'English',
                          style: Appstyles.font18,
                        ),
                        const Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  ),
                  // const Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(Icons.dark_mode_outlined),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Dark or light Theme',
                    style: Appstyles.font23,
                  ),
                 const Spacer(),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: AlertDialog(
                              title: const Text(
                                'Dark or light Theme',
                              ),
                              elevation: 0,
                              content: SizedBox(
                                height: 100,
                                child: Column(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          BlocProvider.of<SettingCubit>(context)
                                              .changetheme('light');
                                          print('light theme');
                                        });
                                        Navigator.pop(context);
                                      },
                                      child:const Text('light'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          BlocProvider.of<SettingCubit>(context)
                                              .changetheme('dark');
                                          print('dark theme');
                                        });
                                        Navigator.pop(context);
                                      },
                                      child:const Text('dark'),
                                    ),
                                  ],
                                ),
                              ),

                              // backgroundColor: Colors.red,
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          BlocProvider.of<SettingCubit>(context).theme2,
                          style: Appstyles.font18,
                        ),
                        const Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  ),
                  // const Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            )
          ],
        ), */
