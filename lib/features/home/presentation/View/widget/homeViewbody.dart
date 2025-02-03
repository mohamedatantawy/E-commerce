import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/widget/Allproducts.dart';
import 'package:commerce8/features/home/presentation/View/widget/listViewofcategers.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    // return Allproducts();
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: ListViewofcategers(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'All products',
            style: Appstyles.font28,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        const Allproducts(),
      ],
    );
  }
}
