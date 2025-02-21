import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/favorite/view_model/cubit/favorite_cubit.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:commerce8/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Productitem extends StatelessWidget {
  const Productitem({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: chanagecolorofthemeff().gettheme(context)
                  ? Colors.grey.withAlpha(150)
                  : Colors.grey.withValues(green: 2),
              spreadRadius: 20,
              offset: const Offset(10, 10),
            ),
          ]),
          child: cardproduct(productEntity: productEntity),
        ),
        Positioned(
          top: -30,
          left: 30,
          right: 30,
          child: Image.network(
            productEntity.imageproduct,
            height: 80,
          ),
        )
      ],
    );
  }
}

class cardproduct extends StatefulWidget {
  const cardproduct({
    super.key,
    required this.productEntity,
  });

  final ProductEntity productEntity;

  @override
  State<cardproduct> createState() => _cardproductState();
}

class _cardproductState extends State<cardproduct> {
  bool isactive = false;
  bool issave = false;
  @override
  Widget build(BuildContext context) {
    issave = BlocProvider.of<FavoriteCubit>(context)
        .showproduct(widget.productEntity);
    return Card(
      color: Colors.white,
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
              widget.productEntity.nametitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Appstyles.font18.copyWith(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  r'$' '${widget.productEntity.prices}',
                  style: Appstyles.font22.copyWith(
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (issave == true) {
                      BlocProvider.of<FavoriteCubit>(context)
                          .removeproduct(widget.productEntity);
                    } else {
                      BlocProvider.of<FavoriteCubit>(context)
                          .saveproduct(widget.productEntity);
                    }
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: issave == true ? Colors.red : Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
