import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:flutter/material.dart';

class Productitem extends StatelessWidget {
  const Productitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 20,
              offset: const Offset(10, 10),
            ),
          ]),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'data',
                    style: Appstyles.font23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(r'$233'),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -30,
          left: 50,
          child: Image.asset(
            Assets.assetsImagesLogo,
            height: 80,
          ),
        )
      ],
    );
  }
}
