import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/features/home/data/Repo_Imple/Home_Repe_Imple.dart';
import 'package:commerce8/features/home/domain/use_cases/fetch_categes_product.dart';
import 'package:commerce8/features/home/presentation/View/drawerView.dart';
import 'package:commerce8/features/home/presentation/View/widget/homeViewbody.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/accountshow_cubit.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/fetchcategersproduct_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final getit = GetIt.instance;

class Homeview extends StatefulWidget {
  const Homeview({super.key, required this.uid});
  final String uid;

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<AccountshowCubit>(context).getprofile(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      drawer: Drawerview(
        uid: widget.uid,
      ),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Gorouter2.kbuyproduct);
            },
            icon: const Icon(
              Icons.shopping_cart_rounded,
              size: 28,
            ),
          ),
        ],
        //  backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Home Page',
          //   style: Appstyles.font30.copyWith(// color: Colors.black, fontSize: 25),
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          // BlocProvider(
          //   create: (context) => FetchAllproductCubit(
          //     FetchAllproductUseCase(
          //       homeRepo: getit.get<HomeRepeImple>(),
          //     ),
          //   )..getAiiproduct(),
          // ),

          BlocProvider(
            create: (context) => FetchcategersproductCubit(
              FetchCategersAllproductUseCase(
                homeRepo: getit.get<HomeRepeImple>(),
              ),
            ),
          ),
        ],
        child: const Padding(
          padding: const EdgeInsets.all(10),
          child: const Homeviewbody(),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: currentpage,
      //     onTap: (int newindex) {
      //         setState(() {
      //             currentpage = newindex;
      //          });
      //        if (newindex == 0) {
      //           GoRouter.of(context).push(Gorouter2.kprofileView);

      //         } else if (newindex == 1) {
      //           GoRouter.of(context).push(Gorouter2.khomeView);

      //         }else {
      //            GoRouter.of(context).push(Gorouter2.ksetting);

      //         }
      //     },
      //     items: const [
      //       BottomNavigationBarItem(
      //         label: 'Account',
      //         icon: Icon(Icons.person),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //         label: 'Favorite',
      //       )
      //     ]),
    );
  }
}
