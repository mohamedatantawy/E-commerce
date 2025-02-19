import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/home/presentation/View/model/categersmodel.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/fetchcategersproduct_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class categersitem extends StatefulWidget {
  const categersitem({
    super.key,
    required this.categersmodel,
  });
  final Categersmodel categersmodel;

  @override
  State<categersitem> createState() => _categersitemState();
}

class _categersitemState extends State<categersitem> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FetchcategersproductCubit>(context)
        .fetchcategespor(widget.categersmodel.name);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          BlocProvider.of<FetchcategersproductCubit>(context)
              .fetchcategespor(widget.categersmodel.name);
        });
        print(widget.categersmodel.name);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          widget.categersmodel.name,
          style: Appstyles.font20.copyWith(
            fontWeight: FontWeight.w300,
          ),
        )),
      ),
    );
  }
}
