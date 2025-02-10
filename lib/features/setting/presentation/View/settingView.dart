import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/setting/presentation/View/widget/settingbody.dart';
import 'package:flutter/material.dart';

class Settingview extends StatelessWidget {
  const Settingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Setting Page',
          style: Appstyles.font30.copyWith(color: Colors.black, fontSize: 25),
        ),
      ),
      body:const Settingbody(),
    );
  }
}
