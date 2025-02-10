import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customtextfield.dart';
import 'package:commerce8/features/search/presentation/view/widget/searchbody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

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
          'Search Page',
          style: Appstyles.font30.copyWith(color: Colors.black, fontSize: 25),
        ),
      ),
      body:const searchbody(),
    );
  }
}
