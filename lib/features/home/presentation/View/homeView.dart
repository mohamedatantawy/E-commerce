import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/utils/api_seervice.dart';
import 'package:commerce8/features/home/data/Repo_Imple/Home_Repe_Imple.dart';
import 'package:commerce8/features/home/data/data_source/Home_remote_data_source.dart';
import 'package:commerce8/features/home/domain/Repos/Home_repo.dart';
import 'package:commerce8/features/home/domain/use_cases/fetch_allproduct_use_case.dart';
import 'package:commerce8/features/home/presentation/View/drawerView.dart';
import 'package:commerce8/features/home/presentation/View/widget/homeViewbody.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/fetch_allproduct_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final getit = GetIt.instance;

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawerview(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Gorouter2.ksearch);
            },
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Home Page',
          style: Appstyles.font30.copyWith(color: Colors.black, fontSize: 25),
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FetchAllproductCubit(
              FetchAllproductUseCase(
                homeRepo: getit.get<HomeRepeImple>(),
              ),
            )..getAiiproduct(),
          ),
        ],
        child: const Padding(
          padding: const EdgeInsets.all(10),
          child: const Homeviewbody(),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            )),
        // color: Colors.red,
        height: 60,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
