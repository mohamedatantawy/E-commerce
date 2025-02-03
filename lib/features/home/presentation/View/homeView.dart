import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/drawerView.dart';
import 'package:commerce8/features/home/presentation/View/widget/homeViewbody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawerview(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Gorouter2.ksearch);
            },
            icon: const Icon(Icons.search),
          ),
        ],
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
          'Home Page',
          style: Appstyles.font30.copyWith(color: Colors.black, fontSize: 25),
        ),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(10),
        child: const Homeviewbody(),
      ),
    );
  }
}
