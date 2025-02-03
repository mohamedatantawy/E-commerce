import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/model/categersmodel.dart';
import 'package:flutter/material.dart';

class categersitem extends StatelessWidget {
  const categersitem({
    super.key,
    required this.categersmodel,
  });
  final Categersmodel categersmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('object');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          categersmodel.name,
          style: Appstyles.font20.copyWith(
            fontWeight: FontWeight.w300,
          ),
        )),
      ),
    );
  }
}
