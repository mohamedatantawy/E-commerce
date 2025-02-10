import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:commerce8/features/home/presentation/View/widget/productpress.dart';
import 'package:flutter/material.dart';

class Allproducts extends StatelessWidget {
  const Allproducts({super.key, required this.productEntity});
  final 
  List<ProductEntity> productEntity;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount:productEntity.length,
      //shrinkWrap: true,
      //  physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        childAspectRatio: 1.5,
        mainAxisExtent: 140,
        mainAxisSpacing: 80,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return  Productpress(productEntity: productEntity[index],);
      },
    );
  }
}
