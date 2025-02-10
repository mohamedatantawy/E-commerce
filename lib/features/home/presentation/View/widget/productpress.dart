import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:commerce8/features/home/presentation/View/widget/productitem.dart';
import 'package:commerce8/features/productDetails/presentation/View/productView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Productpress extends StatelessWidget {
  const Productpress({super.key, required this.productEntity});
final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Gorouter2.kproductdetail);
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return const Productview();
        // }));
      },
      child:  Productitem(productEntity:productEntity ,),
    );
  }
}
