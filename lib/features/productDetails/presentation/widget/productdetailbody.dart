import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';

class Productdetailbody extends StatelessWidget {
  const Productdetailbody({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 230,
              child: Image.network(
                product.imageproduct,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              product.nametitle,
              style: Appstyles.font23,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  // margin: EdgeInsets.symmetric(vertical: 25),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "cost is : ${product.prices} " r'$',
                    style: Appstyles.font28,
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            product.subtitle,
            style: Appstyles.font18,
            overflow: TextOverflow.ellipsis,
            maxLines: 8,
          ),
          const SizedBox(
            height: 20,
          ),
          Customelevaterbutton(onpressed: () {}, title: 'Add in your cart')
        ],
      ),
    );
  }
}
