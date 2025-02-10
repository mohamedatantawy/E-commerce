import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/utils/api_seervice.dart';
import 'package:commerce8/features/home/data/Repo_Imple/Home_Repe_Imple.dart';
import 'package:commerce8/features/home/data/data_source/Home_remote_data_source.dart';
import 'package:commerce8/features/home/presentation/View/homeView.dart';
import 'package:commerce8/features/login/manager/bloc/auths_bloc.dart';
import 'package:commerce8/features/onboreding/presentation/View/onboredingView.dart';
import 'package:commerce8/firebase_options.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getit.registerSingleton<HomeRepeImple>(HomeRepeImple(
      homeRemoteDataSource: HomeRemoteDataSourceImple(
        apiSeervice: ApiSeervice(
          Dio(),
        ),
      ),
    ));
  runApp(const Commerce8());
}

class Commerce8 extends StatelessWidget {
  const Commerce8({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthsBloc(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: Gorouter2.router,
      ),
    );
  }
}
