import 'package:commerce8/core/function/customappbar.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/features/cart/View/buView.dart';
import 'package:commerce8/features/cart/View/widget/cartViewbody.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';

class Cartview extends StatelessWidget {
  const Cartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: const Customappbar()),
      body: Stack(children: [
        Cartviewbody(),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Customelevaterbutton(
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const buyview()));
                },
                title: 'Buy'),
          ),
        )
      ]),
    );
  }
}
