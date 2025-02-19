import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/setting/presentation/mange/cubit/setting_cubit.dart';
import 'package:commerce8/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Commonsetting extends StatefulWidget {
  const Commonsetting({super.key});

  @override
  State<Commonsetting> createState() => _CommonsettingState();
}

class _CommonsettingState extends State<Commonsetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'Commen',
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
                                  child: const Text('Arabic'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('English'),
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
                                  child: const Text('light'),
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
                                  child: const Text('dark'),
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
    );
  }
}
