import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:commerce8/features/setting/presentation/View/widget/settingbody.dart';
import 'package:commerce8/features/setting/presentation/mange/cubit/setting_cubit.dart';
import 'package:commerce8/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Settingview extends StatefulWidget {
  const Settingview({super.key, required this.accountmodels});
  final Accountmodels accountmodels;
  @override
  State<Settingview> createState() => _SettingviewState();
}

class _SettingviewState extends State<Settingview> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor:
              BlocProvider.of<SettingCubit>(context).theme2 == 'dark'
                  ? Colors.black
                  : Colors.white,
          // chanagecolorofthemeff().gettheme(context) == true
          //     ? Colors.white
          //     : Colors.black,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: chanagecolorofthemeff().gettheme(context) == true
                ? Colors.white
                : Colors.black,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
            ),
            centerTitle: true,
            title: Text(
              'Setting Page',
              style: Appstyles.font30.copyWith(
                  color: chanagecolorofthemeff().gettheme(context) == true
                      ? Colors.black
                      : Colors.white,
                  fontSize: 25),
            ),
          ),
          body:  Settingbody(

            accountmodels: widget.accountmodels,
          ),
        );
      },
    );
  }
}
