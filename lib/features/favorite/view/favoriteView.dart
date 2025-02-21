import 'package:commerce8/core/function/customappbar.dart';
import 'package:commerce8/features/favorite/view/widget/favoriteViewbody.dart';
import 'package:flutter/material.dart';

class Favoriteview extends StatelessWidget {
  const Favoriteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: const Customappbar()),
      body: const Favoriteviewbody(),
    );
  }
}
