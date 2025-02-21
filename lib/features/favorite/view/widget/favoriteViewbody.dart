import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/features/favorite/view_model/cubit/favorite_cubit.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Favoriteviewbody extends StatelessWidget {
  const Favoriteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListFavoriteproduct();
  }
}

class ListFavoriteproduct extends StatefulWidget {
  const ListFavoriteproduct({
    super.key,
  });

  @override
  State<ListFavoriteproduct> createState() => _ListFavoriteproductState();
}

class _ListFavoriteproductState extends State<ListFavoriteproduct> {
  @override
  Widget build(BuildContext context) {
    var product = BlocProvider.of<FavoriteCubit>(context).product;
    return ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
              ),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .push(Gorouter2.kproductdetail, extra: product[index]);
                },
                child: ListTile(
                  leading: Image.network(product[index].imageproduct),
                  title: Text(product[index].nametitle),
                  subtitle: Text(
                    product[index].subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        BlocProvider.of<FavoriteCubit>(context)
                            .removeproduct(product[index]);

                        setState(() {});
                      },
                      icon: const Icon(Icons.delete)),
                ),
              ),
            ),
          );
        });
  }
}
