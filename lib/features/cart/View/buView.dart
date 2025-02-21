import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/customappbar.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class buyview extends StatelessWidget {
  const buyview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: const Customappbar()),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: SvgPicture.asset(
                  Assets.assetsImagesPaypal,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    "PAY PAGE",
                    style: Appstyles.font30semibold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
