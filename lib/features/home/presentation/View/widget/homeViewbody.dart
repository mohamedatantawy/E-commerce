import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/widget/Allproducts.dart';
import 'package:commerce8/features/home/presentation/View/widget/listViewofcategers.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/fetch_allproduct_cubit.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/fetchcategersproduct_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      const   allproducrblocbuilder(),
      ],
    );
  }
}

class allproducrblocbuilder extends StatelessWidget {
  const allproducrblocbuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchcategersproductCubit, FetchcategersproductState>(
      builder: (context, state) {
        if (state is Fetchcategersproductsucces) {
          return  Allproducts(productEntity: state.allproduct,);
        } else if (state is Fetchcategersproductfailure) {
          return SliverToBoxAdapter(child: Text(state.emassage));
        } else {
          return const SliverToBoxAdapter(child: Center(child: const CircularProgressIndicator()));
        }
      },
    );
  }
}
