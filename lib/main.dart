import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/utils/api_seervice.dart';
import 'package:commerce8/core/utils/shared_perfernces.dart';
import 'package:commerce8/core/utils/themetype.dart';
import 'package:commerce8/features/home/data/Repo_Imple/Home_Repe_Imple.dart';
import 'package:commerce8/features/home/data/data_source/Home_remote_data_source.dart';
import 'package:commerce8/features/home/presentation/View/homeView.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/accountshow_cubit.dart';
import 'package:commerce8/features/login/manager/bloc/auths_bloc.dart';
import 'package:commerce8/features/onboreding/presentation/View/onboredingView.dart';
import 'package:commerce8/features/setting/presentation/mange/cubit/setting_cubit.dart';
import 'package:commerce8/firebase_options.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String theme = await SharedPerfernces.getString('theme') ?? 'light';
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
  runApp(Commerce8(
    theme: theme,
  ));
}

class Commerce8 extends StatefulWidget {
  const Commerce8({super.key, required this.theme});
  final String theme;

  @override
  State<Commerce8> createState() => _Commerce8State();
}

class _Commerce8State extends State<Commerce8> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthsBloc(),
        ),
         BlocProvider(
          create: (context) => AccountshowCubit(),
        ),
        BlocProvider(
          create: (context) => SettingCubit()..changetheme(widget.theme),
        ),
      ],
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          if (state is Settingthemedark) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: //theme
                  ThemeData.dark()
              //  widget.theme == 'dark' ? ThemeData.dark() : ThemeData.light()
              ,
              routerConfig: Gorouter2.router,
            );
          } else if (state is Settingthemelight) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: // lightTheme
                  //widget.theme == 'dark' ? ThemeData.dark() :
                  ThemeData.light(),
              routerConfig: Gorouter2.router,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class chanagecolorofthemeff {
  gettheme(BuildContext context) {
    String themecolor = BlocProvider.of<SettingCubit>(context).theme2;
    return themecolor == 'light' ? true : false;
  }
}
