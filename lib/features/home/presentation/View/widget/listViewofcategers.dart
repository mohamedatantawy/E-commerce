import 'package:commerce8/features/home/presentation/View/model/categersmodel.dart';
import 'package:commerce8/features/home/presentation/View/widget/categersitem.dart';
import 'package:flutter/material.dart';

class ListViewofcategers extends StatelessWidget {
  const ListViewofcategers({
    super.key,
  });
  final List<Categersmodel> names = const [
    Categersmodel(name: 'Jackets'),
    Categersmodel(name: 'Shoes'),
    Categersmodel(name: 'Pants'),
    Categersmodel(name: 'Hats'),
    Categersmodel(name: 'shirts'),
    Categersmodel(name: 'all'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categersitem(
            categersmodel: names[index],
          );
        },
      ),
    );
  }
}
