import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/features/cart/view_model/cubit/cart_cubit.dart';
import 'package:commerce8/features/favorite/view_model/cubit/favorite_cubit.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
                favoritbotton(
                  product: product,
                )
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
          Customelevaterbutton(
              onpressed: () {
                //GoRouter.of(context).push(Gorouter2.kbuyproduct,extra:  product);
                
                if( !BlocProvider.of<CartCubit>(context).showproduct(product)){
BlocProvider.of<CartCubit>(context).saveproduct(product);
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "This product Add in your cart",
                    style: Appstyles.font18,
                  ),
                ));
              },
              title: 'Add in cart')
        ],
      ),
    );
  }
}

class favoritbotton extends StatefulWidget {
  const favoritbotton({
    super.key,
    required this.product,
  });
  final ProductEntity product;
  @override
  State<favoritbotton> createState() => _favoritbottonState();
}

class _favoritbottonState extends State<favoritbotton> {
  bool issave = false;
  @override
  Widget build(BuildContext context) {
    issave =
        BlocProvider.of<FavoriteCubit>(context).showproduct(widget.product);
    return IconButton(
        onPressed: () {
          if (issave == true) {
            BlocProvider.of<FavoriteCubit>(context)
                .removeproduct(widget.product);
          } else {
            BlocProvider.of<FavoriteCubit>(context).saveproduct(widget.product);
          }
          setState(() {});
        },
        icon: Icon(
          Icons.favorite,
          color: issave == true ? Colors.red : null,
        ));
  }
}
