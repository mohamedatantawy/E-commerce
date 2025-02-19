import 'package:commerce8/features/home/presentation/View/model/categersmodel.dart';
import 'package:commerce8/features/home/presentation/View/widget/categersitem.dart';
import 'package:flutter/material.dart';

class ListViewofcategers extends StatelessWidget {
  const ListViewofcategers({
    super.key,
  });
  final List<Categersmodel> names = const [
    Categersmodel(name: 'all'),
    Categersmodel(name: 'electronics'),
    Categersmodel(name: 'jewelery'),
    Categersmodel(name:"men's clothing"),
    Categersmodel(name: "women's clothing"),
   
    
  ];

  /*
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing" */
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
