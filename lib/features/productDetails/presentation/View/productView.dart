import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:commerce8/features/productDetails/presentation/widget/productdetailbody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Productview extends StatelessWidget {
  const Productview({super.key});

  @override
  Widget build(BuildContext context) {
    ProductEntity product = GoRouterState.of(context).extra as ProductEntity;
    return Scaffold(
      // backgroundColor: Colors.blue[100],
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.search_rounded),
          ),
        ],
        // backgroundColor: Colors.white,
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
      ),
      body: Productdetailbody(
        product: product,
      ),
    );
  }
}
