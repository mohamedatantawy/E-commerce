import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:flutter/material.dart';

class Aboutusview extends StatelessWidget {
  const Aboutusview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        //  backgroundColor: Colors.white,
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
        title: const Text(
          'About us',
          //   style: Appstyles.font30.copyWith(// color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              Assets.assetsImagesLogo,
              height: 200,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'About us',
              style: Appstyles.font30semibold,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              ' our app serve people need to buy anything , we build in this app many things , we use the firebase to save our client and use  this data to show and buy goods and make the safe environment to make commerce is safe ,i happy to use our app, and good luck.',
              style: Appstyles.font23,
            )
          ],
        ),
      ),
    );
  }
}
