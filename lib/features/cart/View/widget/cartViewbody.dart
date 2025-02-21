import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/cart/view_model/cubit/cart_cubit.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cartviewbody extends StatefulWidget {
  const Cartviewbody({
    super.key,
  });

  @override
  State<Cartviewbody> createState() => _CartviewbodyState();
}

class _CartviewbodyState extends State<Cartviewbody> {
  @override
  Widget build(BuildContext context) {
    var product = BlocProvider.of<CartCubit>(context).product;
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
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                          child: Text(
                        "${product[index].prices}" r" $",
                        style: Appstyles.font18,
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      leading: Image.network(product[index].imageproduct),
                      title: Text(
                        product[index].nametitle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      subtitle: Text(
                        product[index].subtitle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            BlocProvider.of<CartCubit>(context)
                                .removeproduct(product[index]);
                            setState(() {});
                          },
                          icon: const Icon(Icons.delete)),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
